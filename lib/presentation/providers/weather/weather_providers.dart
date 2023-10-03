import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_weather_app/domain/entities/weather_entity.dart';
import 'package:flutter_weather_app/presentation/providers/weather/weather_repository_provider.dart';

final mainWeatherProvider =
    StateNotifierProvider<MainWeatherNotifier, MainWeather>((ref) {
  final fetchMainWeather =
      ref.watch(mainWeatherRepositoryProvider).getMainWeather;

  return MainWeatherNotifier(fetchMainWeather: fetchMainWeather);
});

typedef MainWeatherCallback = Future<MainWeather> Function({int page});

class MainWeatherNotifier extends StateNotifier<MainWeather> {
  int currentPage = 0;
  MainWeatherCallback fetchMainWeather;
  MainWeatherNotifier({
    required this.fetchMainWeather,
  }) : super(
          MainWeather(
            temp: 0,
            feelsLike: 0,
            tempMin: 0,
            tempMax: 0,
            pressure: 0,
            humidity: 0,
          ),
        );

  Future<void> loadNextPage() async {
    currentPage++;
    final MainWeather weather = await fetchMainWeather(page: currentPage);
    state = weather;
  }
}
