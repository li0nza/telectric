// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charging_station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Connection _$ConnectionFromJson(Map<String, dynamic> json) => _Connection(
  connectionType: json['ConnectionType'] == null
      ? null
      : ConnectionType.fromJson(json['ConnectionType'] as Map<String, dynamic>),
  statusType: json['StatusType'] == null
      ? null
      : StatusType.fromJson(json['StatusType'] as Map<String, dynamic>),
  powerKW: (json['PowerKW'] as num?)?.toDouble(),
  voltage: (json['Voltage'] as num?)?.toInt(),
  amps: (json['Amps'] as num?)?.toInt(),
);

Map<String, dynamic> _$ConnectionToJson(_Connection instance) =>
    <String, dynamic>{
      'ConnectionType': instance.connectionType,
      'StatusType': instance.statusType,
      'PowerKW': instance.powerKW,
      'Voltage': instance.voltage,
      'Amps': instance.amps,
    };

_ConnectionType _$ConnectionTypeFromJson(Map<String, dynamic> json) =>
    _ConnectionType(
      id: (json['ID'] as num?)?.toInt(),
      title: json['Title'] as String?,
    );

Map<String, dynamic> _$ConnectionTypeToJson(_ConnectionType instance) =>
    <String, dynamic>{'ID': instance.id, 'Title': instance.title};

_StatusType _$StatusTypeFromJson(Map<String, dynamic> json) => _StatusType(
  id: (json['ID'] as num?)?.toInt(),
  title: json['Title'] as String?,
  isOperational: json['IsOperational'] as bool?,
);

Map<String, dynamic> _$StatusTypeToJson(_StatusType instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Title': instance.title,
      'IsOperational': instance.isOperational,
    };

_AddressInfo _$AddressInfoFromJson(Map<String, dynamic> json) => _AddressInfo(
  title: json['Title'] as String,
  addressLine1: json['AddressLine1'] as String?,
  town: json['Town'] as String?,
  stateOrProvince: json['StateOrProvince'] as String?,
  postcode: json['Postcode'] as String?,
  latitude: (json['Latitude'] as num).toDouble(),
  longitude: (json['Longitude'] as num).toDouble(),
  distance: (json['Distance'] as num?)?.toDouble(),
  contactTelephone: json['ContactTelephone1'] as String?,
  accessComments: json['AccessComments'] as String?,
);

Map<String, dynamic> _$AddressInfoToJson(_AddressInfo instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'AddressLine1': instance.addressLine1,
      'Town': instance.town,
      'StateOrProvince': instance.stateOrProvince,
      'Postcode': instance.postcode,
      'Latitude': instance.latitude,
      'Longitude': instance.longitude,
      'Distance': instance.distance,
      'ContactTelephone1': instance.contactTelephone,
      'AccessComments': instance.accessComments,
    };

_OperatorInfo _$OperatorInfoFromJson(Map<String, dynamic> json) =>
    _OperatorInfo(
      id: (json['ID'] as num?)?.toInt(),
      title: json['Title'] as String?,
      websiteUrl: json['WebsiteURL'] as String?,
    );

Map<String, dynamic> _$OperatorInfoToJson(_OperatorInfo instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Title': instance.title,
      'WebsiteURL': instance.websiteUrl,
    };

_ChargingStation _$ChargingStationFromJson(Map<String, dynamic> json) =>
    _ChargingStation(
      id: (json['ID'] as num).toInt(),
      addressInfo: AddressInfo.fromJson(
        json['AddressInfo'] as Map<String, dynamic>,
      ),
      connections:
          (json['Connections'] as List<dynamic>?)
              ?.map((e) => Connection.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      operatorInfo: json['OperatorInfo'] == null
          ? null
          : OperatorInfo.fromJson(json['OperatorInfo'] as Map<String, dynamic>),
      usageCost: json['UsageCost'] as String?,
      numberOfPoints: (json['NumberOfPoints'] as num?)?.toInt(),
      statusType: json['StatusType'] == null
          ? null
          : StatusType.fromJson(json['StatusType'] as Map<String, dynamic>),
      isRecentlyVerified: json['IsRecentlyVerified'] as bool? ?? false,
    );

Map<String, dynamic> _$ChargingStationToJson(_ChargingStation instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'AddressInfo': instance.addressInfo,
      'Connections': instance.connections,
      'OperatorInfo': instance.operatorInfo,
      'UsageCost': instance.usageCost,
      'NumberOfPoints': instance.numberOfPoints,
      'StatusType': instance.statusType,
      'IsRecentlyVerified': instance.isRecentlyVerified,
    };
