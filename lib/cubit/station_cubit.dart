import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:telectric/config/api_config.dart';
import 'package:telectric/cubit/station_state.dart';
import 'package:telectric/data/charging_station_api.dart';
import 'package:telectric/data/location_service.dart';
import 'package:telectric/models/charging_station.dart';

class StationCubit extends Cubit<StationState> {
  final ChargingStationApi _api;
  final LocationService _locationService;

  StationCubit({
    required ChargingStationApi api,
    required LocationService locationService,
  })  : _api = api,
        _locationService = locationService,
        super(const StationState.initial());

  int get _apiCallCount => state.apiCallCount;
  double get _searchRadius => switch (state) {
        StationLoaded(:final searchRadius) => searchRadius,
        _ => ApiConfig.defaultDistanceKm,
      };

  Future<void> loadStationsAtCurrentLocation() async {
    emit(StationLoading(apiCallCount: _apiCallCount));

    try {
      final serviceEnabled =
          await _locationService.isLocationServiceEnabled();
      if (!serviceEnabled) {
        emit(StationError(
          message: 'Location services are disabled. Please enable them.',
          apiCallCount: _apiCallCount,
        ));
        return;
      }

      var permission = await _locationService.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await _locationService.requestPermission();
        if (permission == LocationPermission.denied) {
          emit(StationError(
            message: 'Location permission was denied.',
            apiCallCount: _apiCallCount,
          ));
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        emit(StationError(
          message:
              'Location permission is permanently denied. Please enable it in settings.',
          apiCallCount: _apiCallCount,
        ));
        return;
      }

      final position = await _locationService.getCurrentPosition();
      await _fetchStations(position.latitude, position.longitude);
    } catch (e) {
      emit(StationError(
        message: 'Failed to get location: $e',
        apiCallCount: _apiCallCount,
      ));
    }
  }

  Future<void> loadStationsAtPosition(
    double latitude,
    double longitude, {
    double? radius,
  }) async {
    emit(StationLoading(apiCallCount: _apiCallCount));
    await _fetchStations(latitude, longitude, radiusOverride: radius);
  }

  Future<void> updateSearchRadius(double radius) async {
    final currentState = state;
    if (currentState is StationLoaded) {
      emit(StationLoading(apiCallCount: _apiCallCount));
      await _fetchStations(
        currentState.searchLatitude,
        currentState.searchLongitude,
      );
    }
  }

  void selectStation(ChargingStation station) {
    final currentState = state;
    if (currentState is StationLoaded) {
      emit(currentState.copyWith(selectedStation: station));
    }
  }

  void clearSelection() {
    final currentState = state;
    if (currentState is StationLoaded) {
      emit(currentState.copyWith(selectedStation: null));
    }
  }

  Future<void> _fetchStations(double latitude, double longitude, {double? radiusOverride}) async {
    final radius = radiusOverride ?? _searchRadius;
    try {
      final stations = await _api.fetchStations(
        latitude: latitude,
        longitude: longitude,
        distance: radius,
        maxResults: ApiConfig.defaultMaxResults,
        key: ApiConfig.apiKey,
      );

      emit(StationLoaded(
        stations: stations,
        searchLatitude: latitude,
        searchLongitude: longitude,
        searchRadius: radius,
        apiCallCount: _apiCallCount + 1,
      ));
    } catch (e) {
      emit(StationError(
        message: 'Failed to fetch stations: $e',
        apiCallCount: _apiCallCount,
      ));
    }
  }
}
