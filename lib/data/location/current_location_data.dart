class LocationData {
  double currentLat = 0.0;
  double currentLon = 0.0;

  static final LocationData _instance = LocationData._internal();

  factory LocationData() {
    return _instance;
  }

  LocationData._internal();
}
