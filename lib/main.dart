import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telectric/app.dart';
import 'package:telectric/config/api_config.dart';
import 'package:telectric/cubit/station_cubit.dart';
import 'package:telectric/data/charging_station_api.dart';
import 'package:telectric/data/location_service.dart';

void main() {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();

  final dio = Dio(BaseOptions(
    baseUrl: ApiConfig.baseUrl,
    headers: {
      'User-Agent': 'Telectric/1.0.0 (Flutter; contact@telectric.app)',
      'Accept': 'application/json',
    },
  ));
  final api = ChargingStationApi(dio);
  final locationService = LocationService();

  runApp(
    BlocProvider(
      create: (_) => StationCubit(
        api: api,
        locationService: locationService,
      ),
      child: const TelectricApp(),
    ),
  );
}
