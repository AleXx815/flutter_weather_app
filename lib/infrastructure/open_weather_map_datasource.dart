import 'package:dio/dio.dart';

import 'package:flutter_weather_app/config/constants/environment.dart';
import 'package:flutter_weather_app/data/data.dart';
import 'package:flutter_weather_app/domain/datasources/weather_datasource.dart';
import 'package:flutter_weather_app/domain/entities/weather_entity.dart';

class OpenWeatherMapDatasource extends WeatherDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: "https://api.openweathermap.org/data/2.5/weather?",
      queryParameters: {
        "appid": Environmet.openWeatherMapKey,
      },
    ),
  );

  @override
  Future<List<WeatherEntity>> getCurrentWeatherData({int page = 1}) async {
    final locationData = LocationData();
    final currentLat = locationData.currentLat;
    final currentLon = locationData.currentLon;

    final response = await dio.get("lat=$currentLat&lon=$currentLon");
    final List<WeatherEntity> weather = [];

    return weather;
  }
}
