class CloudsOpenWeatherMap {
  final int all;

  CloudsOpenWeatherMap({
    required this.all,
  });

  factory CloudsOpenWeatherMap.fromJson(Map<String, dynamic> json) =>
      CloudsOpenWeatherMap(
        all: json["all"],
      );

  Map<String, dynamic> toJson() => {
        "all": all,
      };
}
