import 'package:flutter_weather_app/infrastructure/models/openWeatherMap/weather_open_weather_map.dart';

class OpenWeatherMapResponse {
  final WeatherCoordOpenWeatherMap coord;
  final List<WeatherWeatherOpenWeatherMap> weather;
  final String base;
  final WeatherMainOpenWeatherMap main;
  final int visibility;
  final WeatherWindOpenWeatherMap wind;
  final WeatherCloudsOpenWeatherMap? clouds;
  final int dt;
  final WeatherSysOpenWeatherMap sys;
  final int timezone;
  final int id;
  final String name;
  final int cod;

  OpenWeatherMapResponse({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  factory OpenWeatherMapResponse.fromJson(Map<String, dynamic> json) =>
      OpenWeatherMapResponse(
        coord: WeatherCoordOpenWeatherMap.fromJson(json["coord"]),
        weather: List<WeatherWeatherOpenWeatherMap>.from(json["weather"]
            .map((x) => WeatherWeatherOpenWeatherMap.fromJson(x))),
        base: json["base"],
        main: WeatherMainOpenWeatherMap.fromJson(json["main"]),
        visibility: json["visibility"],
        wind: WeatherWindOpenWeatherMap.fromJson(json["wind"]),
        clouds: json["clouds"]
            ? WeatherCloudsOpenWeatherMap.fromJson(json["clouds"])
            : null,
        dt: json["dt"],
        sys: WeatherSysOpenWeatherMap.fromJson(json["sys"]),
        timezone: json["timezone"],
        id: json["id"],
        name: json["name"],
        cod: json["cod"],
      );

  Map<String, dynamic> toJson() => {
        "coord": coord.toJson(),
        "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
        "base": base,
        "main": main.toJson(),
        "visibility": visibility,
        "wind": wind.toJson(),
        "clouds": clouds == null ? null : clouds!.toJson(),
        "dt": dt,
        "sys": sys.toJson(),
        "timezone": timezone,
        "id": id,
        "name": name,
        "cod": cod,
      };
}
