import 'package:flutter_weather_app/domain/entities/weather_entity.dart';

abstract class WeatherRepository {
  Future<List<WeatherEntity>> getWeatherCity({int page = 1});
}
