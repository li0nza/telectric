import 'package:freezed_annotation/freezed_annotation.dart';

part 'charging_station.freezed.dart';
part 'charging_station.g.dart';

@freezed
abstract class Connection with _$Connection {
  const factory Connection({
    @JsonKey(name: 'ConnectionType') ConnectionType? connectionType,
    @JsonKey(name: 'StatusType') StatusType? statusType,
    @JsonKey(name: 'PowerKW') double? powerKW,
    @JsonKey(name: 'Voltage') int? voltage,
    @JsonKey(name: 'Amps') int? amps,
  }) = _Connection;

  factory Connection.fromJson(Map<String, dynamic> json) =>
      _$ConnectionFromJson(json);
}

@freezed
abstract class ConnectionType with _$ConnectionType {
  const factory ConnectionType({
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'Title') String? title,
  }) = _ConnectionType;

  factory ConnectionType.fromJson(Map<String, dynamic> json) =>
      _$ConnectionTypeFromJson(json);
}

@freezed
abstract class StatusType with _$StatusType {
  const factory StatusType({
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'Title') String? title,
    @JsonKey(name: 'IsOperational') bool? isOperational,
  }) = _StatusType;

  factory StatusType.fromJson(Map<String, dynamic> json) =>
      _$StatusTypeFromJson(json);
}

@freezed
abstract class AddressInfo with _$AddressInfo {
  const factory AddressInfo({
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'AddressLine1') String? addressLine1,
    @JsonKey(name: 'Town') String? town,
    @JsonKey(name: 'StateOrProvince') String? stateOrProvince,
    @JsonKey(name: 'Postcode') String? postcode,
    @JsonKey(name: 'Latitude') required double latitude,
    @JsonKey(name: 'Longitude') required double longitude,
    @JsonKey(name: 'Distance') double? distance,
    @JsonKey(name: 'ContactTelephone1') String? contactTelephone,
    @JsonKey(name: 'AccessComments') String? accessComments,
  }) = _AddressInfo;

  factory AddressInfo.fromJson(Map<String, dynamic> json) =>
      _$AddressInfoFromJson(json);
}

@freezed
abstract class OperatorInfo with _$OperatorInfo {
  const factory OperatorInfo({
    @JsonKey(name: 'ID') int? id,
    @JsonKey(name: 'Title') String? title,
    @JsonKey(name: 'WebsiteURL') String? websiteUrl,
  }) = _OperatorInfo;

  factory OperatorInfo.fromJson(Map<String, dynamic> json) =>
      _$OperatorInfoFromJson(json);
}

@freezed
abstract class ChargingStation with _$ChargingStation {
  const factory ChargingStation({
    @JsonKey(name: 'ID') required int id,
    @JsonKey(name: 'AddressInfo') required AddressInfo addressInfo,
    @JsonKey(name: 'Connections') @Default([]) List<Connection> connections,
    @JsonKey(name: 'OperatorInfo') OperatorInfo? operatorInfo,
    @JsonKey(name: 'UsageCost') String? usageCost,
    @JsonKey(name: 'NumberOfPoints') int? numberOfPoints,
    @JsonKey(name: 'StatusType') StatusType? statusType,
    @JsonKey(name: 'IsRecentlyVerified') @Default(false) bool isRecentlyVerified,
  }) = _ChargingStation;

  factory ChargingStation.fromJson(Map<String, dynamic> json) =>
      _$ChargingStationFromJson(json);
}
