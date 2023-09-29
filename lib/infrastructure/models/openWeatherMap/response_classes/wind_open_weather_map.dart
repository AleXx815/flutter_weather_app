class WindOpenWeatherMap {
  final double speed;
  final int deg;

  WindOpenWeatherMap({
    required this.speed,
    required this.deg,
  });

  factory WindOpenWeatherMap.fromJson(Map<String, dynamic> json) =>
      WindOpenWeatherMap(
        speed: json["speed"]?.toDouble(),
        deg: json["deg"],
      );

  Map<String, dynamic> toJson() => {
        "speed": speed,
        "deg": deg,
      };
}
