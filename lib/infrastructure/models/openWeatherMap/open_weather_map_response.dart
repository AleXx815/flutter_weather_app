import 'package:flutter_weather_app/infrastructure/models/openWeatherMap/reponse_classes_open_weather_map.dart';

class OpenWeatherMapResponse {
  final CoordOpenWeatherMap coord;
  final List<WeatherOpenWeatherMap> weather;
  final String base;
  final MainFromOpenWeatherMap main;
  final int visibility;
  final WindOpenWeatherMap wind;
  final int dt;
  final SysOpenWeatherMap sys;
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
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  factory OpenWeatherMapResponse.fromJson(Map<String, dynamic> json) =>
      OpenWeatherMapResponse(
        coord: CoordOpenWeatherMap.fromJson(json["coord"]),
        weather: List<WeatherOpenWeatherMap>.from(
            json["weather"].map((x) => WeatherOpenWeatherMap.fromJson(x))),
        base: json["base"],
        main: MainFromOpenWeatherMap.fromJson(json["main"]),
        visibility: json["visibility"],
        wind: WindOpenWeatherMap.fromJson(json["wind"]),
        dt: json["dt"],
        sys: SysOpenWeatherMap.fromJson(json["sys"]),
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
        "dt": dt,
        "sys": sys.toJson(),
        "timezone": timezone,
        "id": id,
        "name": name,
        "cod": cod,
      };
}
