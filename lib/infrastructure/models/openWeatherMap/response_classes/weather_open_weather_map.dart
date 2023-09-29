class WeatherOpenWeatherMap {
  final int id;
  final String main;
  final String description;
  final String icon;

  WeatherOpenWeatherMap({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory WeatherOpenWeatherMap.fromJson(Map<String, dynamic> json) =>
      WeatherOpenWeatherMap(
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
