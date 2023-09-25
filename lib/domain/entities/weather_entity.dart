class WeatherEntity {
  final Coordinates coordinates;
  final List<WeatherDescription> weather;
  final String base;
  final MainWeatherData main;
  final int visibility;
  final Wind wind;
  final int dt;
  final AstronomicalInformation astronomicalInformation;
  final int timezone;
  final int id;
  final String name;
  final int statusCode;

  WeatherEntity({
    required this.coordinates,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.dt,
    required this.astronomicalInformation,
    required this.timezone,
    required this.id,
    required this.name,
    required this.statusCode,
  });
}

class Coordinates {
  final double lon;
  final double lat;

  Coordinates({
    required this.lon,
    required this.lat,
  });
}

class WeatherDescription {
  final int id;
  final String main;
  final String description;
  final String icon;

  WeatherDescription({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });
}

class MainWeatherData {
  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int humidity;

  MainWeatherData({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });
}

class Wind {
  final double speed;
  final int direction;

  Wind({
    required this.speed,
    required this.direction,
  });
}

class AstronomicalInformation {
  final int type;
  final int id;
  final String country;
  final int sunrise;
  final int sunset;

  AstronomicalInformation({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });
}
