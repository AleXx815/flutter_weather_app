import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environmet {
  static String openWeatherMapKey =
      dotenv.env["OPEN_WEATHER_MAP_KEY"] ?? "API key not found in .env file";
}
