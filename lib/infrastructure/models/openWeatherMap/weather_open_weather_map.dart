class WeatherCloudsOpenWeatherMap {
  final int all;

  WeatherCloudsOpenWeatherMap({
    required this.all,
  });

  factory WeatherCloudsOpenWeatherMap.fromJson(Map<String, dynamic> json) =>
      WeatherCloudsOpenWeatherMap(
        all: json["all"],
      );

  Map<String, dynamic> toJson() => {
        "all": all,
      };
}

class WeatherCoordOpenWeatherMap {
  final double lon;
  final double lat;

  WeatherCoordOpenWeatherMap({
    required this.lon,
    required this.lat,
  });

  factory WeatherCoordOpenWeatherMap.fromJson(Map<String, dynamic> json) =>
      WeatherCoordOpenWeatherMap(
        lon: json["lon"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "lon": lon,
        "lat": lat,
      };
}

class WeatherMainOpenWeatherMap {
  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int humidity;

  WeatherMainOpenWeatherMap({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });

  factory WeatherMainOpenWeatherMap.fromJson(Map<String, dynamic> json) =>
      WeatherMainOpenWeatherMap(
        temp: json["temp"]?.toDouble(),
        feelsLike: json["feels_like"]?.toDouble(),
        tempMin: json["temp_min"]?.toDouble(),
        tempMax: json["temp_max"]?.toDouble(),
        pressure: json["pressure"],
        humidity: json["humidity"],
      );

  Map<String, dynamic> toJson() => {
        "temp": temp,
        "feels_like": feelsLike,
        "temp_min": tempMin,
        "temp_max": tempMax,
        "pressure": pressure,
        "humidity": humidity,
      };
}

class WeatherSysOpenWeatherMap {
  final int type;
  final int id;
  final String country;
  final int sunrise;
  final int sunset;

  WeatherSysOpenWeatherMap({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  factory WeatherSysOpenWeatherMap.fromJson(Map<String, dynamic> json) =>
      WeatherSysOpenWeatherMap(
        type: json["type"],
        id: json["id"],
        country: json["country"],
        sunrise: json["sunrise"],
        sunset: json["sunset"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "country": country,
        "sunrise": sunrise,
        "sunset": sunset,
      };
}

class WeatherWeatherOpenWeatherMap {
  final int id;
  final String main;
  final String description;
  final String icon;

  WeatherWeatherOpenWeatherMap({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory WeatherWeatherOpenWeatherMap.fromJson(Map<String, dynamic> json) =>
      WeatherWeatherOpenWeatherMap(
        id: json["id"],
        main: json["main"],
        description: json["description"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "main": main,
        "description": description,
        "icon": icon,
      };
}

class WeatherWindOpenWeatherMap {
  final double speed;
  final int deg;

  WeatherWindOpenWeatherMap({
    required this.speed,
    required this.deg,
  });

  factory WeatherWindOpenWeatherMap.fromJson(Map<String, dynamic> json) =>
      WeatherWindOpenWeatherMap(
        speed: json["speed"]?.toDouble(),
        deg: json["deg"],
      );

  Map<String, dynamic> toJson() => {
        "speed": speed,
        "deg": deg,
      };
}
