import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:telectric/app.dart';
import 'package:telectric/cubit/station_cubit.dart';
import 'package:telectric/data/charging_station_api.dart';
import 'package:telectric/data/location_service.dart';

class MockChargingStationApi extends Mock implements ChargingStationApi {}

class MockLocationService extends Mock implements LocationService {}

void main() {
  testWidgets('App renders without crashing', (tester) async {
    final mockApi = MockChargingStationApi();
    final mockLocation = MockLocationService();

    when(() => mockLocation.isLocationServiceEnabled())
        .thenAnswer((_) async => false);

    await tester.pumpWidget(
      BlocProvider(
        create: (_) => StationCubit(
          api: mockApi,
          locationService: mockLocation,
        ),
        child: const TelectricApp(),
      ),
    );

    await tester.pump();
    expect(find.byType(TelectricApp), findsOneWidget);
  });
}
