import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:telectric/models/charging_station.dart';

part 'station_state.freezed.dart';

@freezed
abstract class StationState with _$StationState {
  const factory StationState.initial({
    @Default(0) int apiCallCount,
  }) = StationInitial;

  const factory StationState.loading({
    @Default(0) int apiCallCount,
  }) = StationLoading;

  const factory StationState.loaded({
    required List<ChargingStation> stations,
    ChargingStation? selectedStation,
    required double searchLatitude,
    required double searchLongitude,
    @Default(2.0) double searchRadius,
    @Default(0) int apiCallCount,
  }) = StationLoaded;

  const factory StationState.error({
    required String message,
    @Default(0) int apiCallCount,
  }) = StationError;
}
