class CoordOpenWeatherMap {
  final double lon;
  final double lat;

  CoordOpenWeatherMap({
    required this.lon,
    required this.lat,
  });

  factory CoordOpenWeatherMap.fromJson(Map<String, dynamic> json) =>
      CoordOpenWeatherMap(
        lon: json["lon"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "lon": lon,
        "lat": lat,
      };
}
