import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_weather_app/infrastructure/datasources/open_weather_map_datasource.dart';
import 'package:flutter_weather_app/infrastructure/repositories/weather_repository_impl.dart';

final weatherRepositoryProvider = Provider((ref) {
  return MainWeatherRepositoryImpl(OpenWeatherMapDatasource());
});
