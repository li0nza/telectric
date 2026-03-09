import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geolocator_platform_interface/geolocator_platform_interface.dart';
import 'package:mocktail/mocktail.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:telectric/app.dart';
import 'package:telectric/cubit/station_cubit.dart';
import 'package:telectric/data/charging_station_api.dart';
import 'package:telectric/data/location_service.dart';
import 'package:telectric/models/charging_station.dart';

class MockChargingStationApi extends Mock implements ChargingStationApi {}

class MockLocationService extends Mock implements LocationService {}

class FakeGeolocatorPlatform extends Fake
    with MockPlatformInterfaceMixin
    implements GeolocatorPlatform {
  @override
  Future<bool> isLocationServiceEnabled() async => true;
  @override
  Future<LocationPermission> checkPermission() async =>
      LocationPermission.whileInUse;
  @override
  Future<LocationPermission> requestPermission() async =>
      LocationPermission.whileInUse;
  @override
  Stream<Position> getPositionStream(
          {LocationSettings? locationSettings}) =>
      const Stream.empty();
  @override
  Stream<ServiceStatus> getServiceStatusStream() => const Stream.empty();
  @override
  Future<Position?> getLastKnownPosition(
          {bool forceLocationManager = false}) async =>
      null;
  @override
  Future<Position> getCurrentPosition(
          {LocationSettings? locationSettings}) async =>
      _testPosition;
}

final _testStations = [
  const ChargingStation(
    id: 1,
    addressInfo: AddressInfo(
      title: 'Test Station Alpha',
      addressLine1: '123 Main Street',
      town: 'Utrecht',
      latitude: 52.0907,
      longitude: 5.1214,
      distance: 1.2,
    ),
    connections: [
      Connection(
        connectionType: ConnectionType(id: 25, title: 'Type 2'),
        statusType: StatusType(
          id: 50,
          title: 'Operational',
          isOperational: true,
        ),
        powerKW: 22,
      ),
    ],
    operatorInfo: OperatorInfo(id: 1, title: 'ChargePoint'),
    usageCost: 'Free',
    numberOfPoints: 2,
  ),
  const ChargingStation(
    id: 2,
    addressInfo: AddressInfo(
      title: 'Test Station Beta',
      addressLine1: '456 Oak Avenue',
      town: 'Utrecht',
      latitude: 52.0950,
      longitude: 5.1180,
      distance: 2.5,
    ),
    connections: [
      Connection(
        connectionType: ConnectionType(id: 33, title: 'CCS'),
        statusType: StatusType(
          id: 50,
          title: 'Operational',
          isOperational: true,
        ),
        powerKW: 150,
      ),
    ],
    operatorInfo: OperatorInfo(id: 2, title: 'Fastned'),
    numberOfPoints: 4,
  ),
];

final _testPosition = Position(
  latitude: 52.0907,
  longitude: 5.1214,
  timestamp: DateTime(2024),
  accuracy: 10,
  altitude: 0,
  altitudeAccuracy: 0,
  heading: 0,
  headingAccuracy: 0,
  speed: 0,
  speedAccuracy: 0,
);

void main() {
  late MockChargingStationApi mockApi;
  late MockLocationService mockLocation;

  setUp(() {
    mockApi = MockChargingStationApi();
    mockLocation = MockLocationService();

    // Fake the platform-level Geolocator so CurrentLocationLayer's
    // internal calls don't trigger real platform channel requests.
    GeolocatorPlatform.instance = FakeGeolocatorPlatform();

    when(() => mockLocation.isLocationServiceEnabled())
        .thenAnswer((_) async => true);
    when(() => mockLocation.checkPermission())
        .thenAnswer((_) async => LocationPermission.whileInUse);
    when(() => mockLocation.getCurrentPosition())
        .thenAnswer((_) async => _testPosition);
    when(() => mockApi.fetchStations(
          latitude: any(named: 'latitude'),
          longitude: any(named: 'longitude'),
          distance: any(named: 'distance'),
          maxResults: any(named: 'maxResults'),
          key: any(named: 'key'),
          output: any(named: 'output'),
          distanceUnit: any(named: 'distanceUnit'),
          compact: any(named: 'compact'),
          verbose: any(named: 'verbose'),
        )).thenAnswer((_) async => _testStations);
  });

  Widget buildApp() {
    return BlocProvider(
      create: (_) => StationCubit(
        api: mockApi,
        locationService: mockLocation,
      ),
      child: const TelectricApp(),
    );
  }

  testWidgets(
    'app loads, displays stations, and shows detail sheet on tap',
    (tester) async {
      await tester.pumpWidget(buildApp());
      await tester.pumpAndSettle();

      // Verify the map is visible
      expect(find.text('Telectric'), findsNothing);
      expect(find.byIcon(Icons.my_location), findsOneWidget);

      // Verify API call counter shows 1 after initial load
      expect(find.text('1'), findsOneWidget);

      // Verify station markers are on the map
      expect(find.byIcon(Icons.location_pin), findsNWidgets(2));

      // Tap the first station marker to show detail sheet
      await tester.tap(find.byIcon(Icons.location_pin).first);
      await tester.pumpAndSettle();

      // Verify detail sheet shows station info
      expect(find.text('Test Station Alpha'), findsOneWidget);
      expect(find.text('123 Main Street'), findsOneWidget);
      expect(find.text('Utrecht'), findsOneWidget);
      expect(find.text('1.2 km away'), findsOneWidget);
      expect(find.text('ChargePoint'), findsOneWidget);
      expect(find.text('Free'), findsOneWidget);
      expect(find.text('2 charging point(s)'), findsOneWidget);

      // Verify connector info
      expect(find.text('Type 2'), findsOneWidget);
      expect(find.text('22 kW'), findsOneWidget);

      // Dismiss the detail sheet
      await tester.tap(find.byIcon(Icons.close));
      await tester.pumpAndSettle();

      // Verify detail sheet is dismissed
      expect(find.text('Test Station Alpha'), findsNothing);
    },
  );

  testWidgets(
    'API call counter increments on each search',
    (tester) async {
      await tester.pumpWidget(buildApp());
      await tester.pumpAndSettle();

      // After initial load, counter should show 1
      expect(find.text('1'), findsOneWidget);

      // Tap my location to trigger another fetch
      await tester.tap(find.byIcon(Icons.my_location));
      await tester.pumpAndSettle();

      // Counter should now show 2
      expect(find.text('2'), findsOneWidget);
    },
  );

  testWidgets(
    'shows error when location services are disabled',
    (tester) async {
      when(() => mockLocation.isLocationServiceEnabled())
          .thenAnswer((_) async => false);

      await tester.pumpWidget(buildApp());
      await tester.pumpAndSettle();

      // Verify error snackbar is shown
      expect(
        find.text('Location services are disabled. Please enable them.'),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'shows error when location permission is denied',
    (tester) async {
      when(() => mockLocation.checkPermission())
          .thenAnswer((_) async => LocationPermission.denied);
      when(() => mockLocation.requestPermission())
          .thenAnswer((_) async => LocationPermission.denied);

      await tester.pumpWidget(buildApp());
      await tester.pumpAndSettle();

      expect(find.text('Location permission was denied.'), findsOneWidget);
    },
  );
}
