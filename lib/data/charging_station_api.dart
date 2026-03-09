import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:telectric/models/charging_station.dart';

part 'charging_station_api.g.dart';

@RestApi(baseUrl: 'https://api.openchargemap.io/v3')
abstract class ChargingStationApi {
  factory ChargingStationApi(Dio dio, {String baseUrl}) =
      _ChargingStationApi;

  @GET('/poi/')
  Future<List<ChargingStation>> fetchStations({
    @Query('output') String output = 'json',
    @Query('latitude') required double latitude,
    @Query('longitude') required double longitude,
    @Query('distance') double distance = 10,
    @Query('distanceunit') String distanceUnit = 'KM',
    @Query('maxresults') int maxResults = 50,
    @Query('key') required String key,
    @Query('compact') bool compact = false,
    @Query('verbose') bool verbose = false,
  });
}
