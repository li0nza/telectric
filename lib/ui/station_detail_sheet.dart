import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:telectric/models/charging_station.dart';

class StationDetailSheet extends StatelessWidget {
  final ChargingStation station;
  final VoidCallback onClose;

  const StationDetailSheet({
    super.key,
    required this.station,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      minChildSize: 0.2,
      maxChildSize: 0.7,
      snap: true,
      snapSizes: const [0.2, 0.4, 0.7],
      builder: (context, scrollController) {
        return _SheetContent(
          station: station,
          onClose: onClose,
          scrollController: scrollController,
        );
      },
    );
  }
}

class _SheetContent extends StatelessWidget {
  final ChargingStation station;
  final VoidCallback onClose;
  final ScrollController scrollController;

  const _SheetContent({
    required this.station,
    required this.onClose,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final address = station.addressInfo;

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: ListView(
        controller: scrollController,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          // Drag handle
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          // Header
          Row(
            children: [
              Icon(Icons.bolt, color: theme.colorScheme.primary),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  address.title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(icon: const Icon(Icons.close), onPressed: onClose),
            ],
          ),
          const SizedBox(height: 8),
          if (address.addressLine1 != null)
            _InfoRow(Icons.location_on, address.addressLine1!),
          if (address.town != null)
            _InfoRow(Icons.location_city, address.town!),
          if (address.distance != null)
            _InfoRow(
              Icons.straighten,
              '${address.distance!.toStringAsFixed(1)} km away',
            ),
          if (station.operatorInfo?.title != null)
            _InfoRow(Icons.business, station.operatorInfo!.title!),
          if (station.usageCost != null)
            _InfoRow(Icons.attach_money, station.usageCost!),
          if (station.numberOfPoints != null)
            _InfoRow(
              Icons.electrical_services,
              '${station.numberOfPoints} charging point(s)',
            ),
          if (station.connections.isNotEmpty) ...[
            const SizedBox(height: 12),
            Text(
              'Connectors',
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            ...station.connections.map((c) => _ConnectionTile(connection: c)),
          ],
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: () =>
                  _openNavigation(address.latitude, address.longitude),
              icon: const Icon(Icons.directions),
              label: const Text('Navigate'),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Future<void> _openNavigation(double lat, double lng) async {
    if (kIsWeb) {
      // Web: open Google Maps directions in new tab
      final uri = Uri.parse(
        'https://www.google.com/maps/dir/?api=1&destination=$lat,$lng',
      );
      await launchUrl(uri, mode: LaunchMode.externalApplication);
      return;
    }

    // Mobile: try geo: scheme first (triggers app chooser on Android)
    final geoUri = Uri.parse('geo:$lat,$lng?q=$lat,$lng');
    if (await canLaunchUrl(geoUri)) {
      await launchUrl(geoUri);
    } else {
      // iOS fallback: Apple Maps
      final fallback = Uri.parse(
        'https://maps.apple.com/?daddr=$lat,$lng&dirflg=d',
      );
      await launchUrl(fallback, mode: LaunchMode.externalApplication);
    }
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _InfoRow(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.grey[600]),
          const SizedBox(width: 8),
          Expanded(
            child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }
}

class _ConnectionTile extends StatelessWidget {
  final Connection connection;

  const _ConnectionTile({required this.connection});

  @override
  Widget build(BuildContext context) {
    final type = connection.connectionType?.title ?? 'Unknown';
    final power = connection.powerKW;
    final status = connection.statusType;
    final isOperational = status?.isOperational ?? true;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: isOperational
            ? const Color.fromARGB(255, 76, 175, 80).withValues(alpha: 0.1)
            : Colors.red.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            Icons.power,
            size: 16,
            color: isOperational ? Colors.green : Colors.red,
          ),
          const SizedBox(width: 8),
          Text(type),
          const Spacer(),
          if (power != null)
            Text(
              '${power.toStringAsFixed(0)} kW',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
        ],
      ),
    );
  }
}
