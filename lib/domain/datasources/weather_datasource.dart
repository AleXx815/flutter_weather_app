import 'package:flutter_weather_app/domain/entities/weather_entity.dart';

abstract class MainWeatherDatasource {
  Future<MainWeather> getMainWeather({int page = 1});
}
