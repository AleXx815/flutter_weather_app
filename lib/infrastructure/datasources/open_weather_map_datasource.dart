import 'package:dio/dio.dart';

import 'package:flutter_weather_app/config/constants/environment.dart';
import 'package:flutter_weather_app/data/data.dart';
import 'package:flutter_weather_app/domain/datasources/weather_datasource.dart';
import 'package:flutter_weather_app/domain/entities/weather_entity.dart';
import 'package:flutter_weather_app/infrastructure/mappers/weather_mapper.dart';
import 'package:flutter_weather_app/infrastructure/models/openWeatherMap/open_weather_map_response.dart';

class OpenWeatherMapDatasource extends MainWeatherDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: "https://api.openweathermap.org/data/2.5/weather?",
      queryParameters: {
        "appid": Environmet.openWeatherMapKey,
      },
    ),
  );

  @override
  Future<MainWeather> getMainWeather({int page = 1}) async {
    final locationData = LocationData();
    final currentLat = locationData.currentLat;
    final currentLon = locationData.currentLon;

    final response = await dio.get("lat=$currentLat&lon=$currentLon&");

    final openWeatherMapResponse =
        OpenWeatherMapResponse.fromJson(response.data);

    final mainData = openWeatherMapResponse.main;

    MainWeather mainWeather =
        MainWeatherMapper.openWeatherMapMainWeatherToEntity(mainData);

    return mainWeather;
  }
}
