import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:geolocator/geolocator.dart';
import 'package:patrol/patrol.dart';
import 'package:telectric/app.dart';
import 'package:telectric/cubit/station_cubit.dart';
import 'package:telectric/data/charging_station_api.dart';
import 'package:telectric/data/location_service.dart';
import 'package:telectric/models/charging_station.dart';

class MockChargingStationApi extends Mock implements ChargingStationApi {}

class MockLocationService extends Mock implements LocationService {}

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

  patrolTest(
    'app loads, displays stations, and shows detail sheet on tap',
    ($) async {
      await $.pumpWidgetAndSettle(buildApp());

      // Verify the map is visible
      expect($('Telectric'), findsNothing); // no app bar title, map fills screen
      expect($(Icons.my_location), findsOneWidget);

      // Verify API call counter shows 1 after initial load
      expect($('1'), findsOneWidget);

      // Verify station markers are on the map
      expect($(Icons.location_pin), findsNWidgets(2));

      // Tap the first station marker to show detail sheet
      await $(Icons.location_pin).first.tap();
      await $.pumpAndSettle();

      // Verify detail sheet shows station info
      expect($('Test Station Alpha'), findsOneWidget);
      expect($('123 Main Street'), findsOneWidget);
      expect($('Utrecht'), findsOneWidget);
      expect($('1.2 km away'), findsOneWidget);
      expect($('ChargePoint'), findsOneWidget);
      expect($('Free'), findsOneWidget);
      expect($('2 charging point(s)'), findsOneWidget);

      // Verify connector info
      expect($('Type 2'), findsOneWidget);
      expect($('22 kW'), findsOneWidget);

      // Dismiss the detail sheet
      await $(Icons.close).tap();
      await $.pumpAndSettle();

      // Verify detail sheet is dismissed
      expect($('Test Station Alpha'), findsNothing);
    },
  );

  patrolTest(
    'API call counter increments on each search',
    ($) async {
      await $.pumpWidgetAndSettle(buildApp());

      // After initial load, counter should show 1
      expect($('1'), findsOneWidget);

      // Tap my location to trigger another fetch
      await $(Icons.my_location).tap();
      await $.pumpAndSettle();

      // Counter should now show 2
      expect($('2'), findsOneWidget);
    },
  );

  patrolTest(
    'shows error when location services are disabled',
    ($) async {
      when(() => mockLocation.isLocationServiceEnabled())
          .thenAnswer((_) async => false);

      await $.pumpWidgetAndSettle(buildApp());

      // Verify error snackbar is shown
      expect(
        $('Location services are disabled. Please enable them.'),
        findsOneWidget,
      );
    },
  );

  patrolTest(
    'shows error when location permission is denied',
    ($) async {
      when(() => mockLocation.checkPermission())
          .thenAnswer((_) async => LocationPermission.denied);
      when(() => mockLocation.requestPermission())
          .thenAnswer((_) async => LocationPermission.denied);

      await $.pumpWidgetAndSettle(buildApp());

      expect($('Location permission was denied.'), findsOneWidget);
    },
  );
}
