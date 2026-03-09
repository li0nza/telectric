import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';
import 'package:telectric/cubit/station_cubit.dart';
import 'package:telectric/cubit/station_state.dart';
import 'package:telectric/models/charging_station.dart';
import 'package:telectric/ui/station_detail_sheet.dart';
import 'package:telectric/ui/widgets/api_call_counter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> with TickerProviderStateMixin {
  final MapController _mapController = MapController();
  bool _showSearchHere = false;
  LatLng? _lastSearchCenter;

  @override
  void initState() {
    super.initState();
    context.read<StationCubit>().loadStationsAtCurrentLocation();
  }

  void _animatedMove(LatLng dest, double zoom) {
    final camera = _mapController.camera;
    final latTween =
        Tween<double>(begin: camera.center.latitude, end: dest.latitude);
    final lngTween =
        Tween<double>(begin: camera.center.longitude, end: dest.longitude);
    final zoomTween = Tween<double>(begin: camera.zoom, end: zoom);

    final controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    final animation =
        CurvedAnimation(parent: controller, curve: Curves.easeInOut);

    controller.addListener(() {
      _mapController.move(
        LatLng(latTween.evaluate(animation), lngTween.evaluate(animation)),
        zoomTween.evaluate(animation),
      );
    });

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.dispose();
      }
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<StationCubit, StationState>(
        listener: (context, state) {
          switch (state) {
            case StationLoaded(:final searchLatitude, :final searchLongitude):
              _lastSearchCenter = LatLng(searchLatitude, searchLongitude);
              _showSearchHere = false;
              _animatedMove(
                LatLng(searchLatitude, searchLongitude),
                _mapController.camera.zoom,
              );
            case StationError(:final message):
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.red),
              );
            default:
              break;
          }
        },
        builder: (context, state) {
          final stations = switch (state) {
            StationLoaded(:final stations) => stations,
            _ => <ChargingStation>[],
          };

          final selectedStation = switch (state) {
            StationLoaded(:final selectedStation) => selectedStation,
            _ => null,
          };

          final isLoading = state is StationLoading;

          return Stack(
            children: [
              FlutterMap(
                mapController: _mapController,
                options: MapOptions(
                  initialCenter: const LatLng(52.0907, 4.8214),
                  initialZoom: 15.0,
                  onPositionChanged: _onPositionChanged,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png',
                    subdomains: const ['a', 'b', 'c', 'd'],
                    userAgentPackageName: 'com.example.telectric',
                    retinaMode: MediaQuery.of(context).devicePixelRatio > 1.0,
                  ),
                  CurrentLocationLayer(headingStream: const Stream.empty()),
                  MarkerLayer(
                    markers: stations
                        .map((s) => _buildMarker(context, s))
                        .toList(),
                  ),
                ],
              ),
              const Positioned(
                top: 50,
                right: 16,
                child: SafeArea(child: ApiCallCounter()),
              ),
              if (isLoading)
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const CircularProgressIndicator(),
                  ),
                ),
              if (_showSearchHere)
                Positioned(
                  top: 100,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: ElevatedButton.icon(
                      onPressed: _searchThisArea,
                      icon: const Icon(Icons.search),
                      label: const Text('Search this area'),
                    ),
                  ),
                ),
              Positioned(
                right: 16,
                bottom: 160,
                child: Column(
                  children: [
                    _ZoomButton(
                      icon: Icons.add,
                      onPressed: () => _animatedMove(
                        _mapController.camera.center,
                        _mapController.camera.zoom + 1,
                      ),
                    ),
                    const SizedBox(height: 4),
                    _ZoomButton(
                      icon: Icons.remove,
                      onPressed: () => _animatedMove(
                        _mapController.camera.center,
                        _mapController.camera.zoom - 1,
                      ),
                    ),
                  ],
                ),
              ),
              if (selectedStation != null)
                StationDetailSheet(
                  station: selectedStation,
                  onClose: () => context.read<StationCubit>().clearSelection(),
                ),
            ],
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: FloatingActionButton(
          onPressed: () =>
              context.read<StationCubit>().loadStationsAtCurrentLocation(),
          child: const Icon(Icons.my_location),
        ),
      ),
    );
  }

  Marker _buildMarker(BuildContext context, ChargingStation station) {
    return Marker(
      point: LatLng(
        station.addressInfo.latitude,
        station.addressInfo.longitude,
      ),
      width: 30,
      height: 40,
      alignment: Alignment.topCenter,
      child: GestureDetector(
        onTap: () => context.read<StationCubit>().selectStation(station),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Icon(
              Icons.location_pin,
              color: Theme.of(context).colorScheme.primary,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }

  void _onPositionChanged(MapCamera camera, bool hasGesture) {
    if (!hasGesture || _lastSearchCenter == null) return;

    final distance = const Distance().as(
      LengthUnit.Kilometer,
      _lastSearchCenter!,
      camera.center,
    );

    if (distance > 0.5 && !_showSearchHere) {
      setState(() => _showSearchHere = true);
    }
  }

  double _radiusFromZoom(double zoom) {
    // Approximate visible radius in km based on zoom level
    // At zoom 13 ~ 5km, zoom 10 ~ 40km, zoom 8 ~ 100km+
    final radius = 200.0 / (1 << zoom.round().clamp(1, 18));
    return radius.clamp(1.0, 50.0);
  }

  void _searchThisArea() {
    final center = _mapController.camera.center;
    final radius = _radiusFromZoom(_mapController.camera.zoom);
    context.read<StationCubit>().loadStationsAtPosition(
          center.latitude,
          center.longitude,
          radius: radius,
        );
    setState(() => _showSearchHere = false);
  }
}

class _ZoomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _ZoomButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onPressed,
          child: Icon(icon, size: 20, color: Colors.grey[700]),
        ),
      ),
    );
  }
}
