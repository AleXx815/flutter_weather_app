class SysOpenWeatherMap {
  final int type;
  final int id;
  final String country;
  final int sunrise;
  final int sunset;

  SysOpenWeatherMap({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  factory SysOpenWeatherMap.fromJson(Map<String, dynamic> json) =>
      SysOpenWeatherMap(
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
