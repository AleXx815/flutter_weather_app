import 'package:flutter_weather_app/config/constants/environment.dart';
import 'package:flutter_weather_app/domain/datasources/weather_datasource.dart';
import 'package:flutter_weather_app/domain/entities/weather_entity.dart';

import 'package:dio/dio.dart';

class OpenWeatherMapDatasource extends WeatherDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: "https://api.openweathermap.org/data/2.5/weather?",
      queryParameters: {
        "appid": Environmet.openWeatherMapKey,
        "id": "3688689",
      },
    ),
  );

  @override
  Future<List<WeatherEntity>> getCurrentWeatherData({int page = 1}) async {
    return [];
  }
}
