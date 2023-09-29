import 'package:flutter_weather_app/domain/entities/weather_entity.dart';
import 'package:flutter_weather_app/infrastructure/models/openWeatherMap/weather_open_weather_map.dart';

class MainWeatherMapper {
  static MainWeather openWeatherMapMainWeatherToEntity(
          WeatherMainOpenWeatherMap mainWeather) =>
      MainWeather(
        temp: mainWeather.temp,
        feelsLike: mainWeather.feelsLike,
        tempMin: mainWeather.tempMin,
        tempMax: mainWeather.tempMax,
        pressure: mainWeather.pressure,
        humidity: mainWeather.humidity,
      );
}
