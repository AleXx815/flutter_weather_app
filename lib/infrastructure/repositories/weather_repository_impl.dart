import 'package:flutter_weather_app/domain/datasources/weather_datasources.dart';
import 'package:flutter_weather_app/domain/entities/weather_entity.dart';
import 'package:flutter_weather_app/domain/repositories/weather_repositories.dart';

class MainWeatherRepositoryImpl extends MainWeatherRepository {
  final MainWeatherDatasource datasource;

  MainWeatherRepositoryImpl(this.datasource);

  @override
  Future<MainWeather> getMainWeather({int page = 1}) {
    return datasource.getMainWeather(page: page);
  }
}
