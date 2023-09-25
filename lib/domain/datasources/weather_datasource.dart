import 'package:flutter_weather_app/domain/entities/weather_entity.dart';

abstract class WeatherDatasource {
  Future<List<WeatherEntity>> getCurrentWeatherData({int page = 1});
}
