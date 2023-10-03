import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_weather_app/presentation/providers/weather/weather_providers.dart';
import 'package:flutter_weather_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const name = "home-screen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _InitialHomeView(),
    );
  }
}

class _InitialHomeView extends ConsumerStatefulWidget {
  const _InitialHomeView();

  @override
  _InitialHomeViewState createState() => _InitialHomeViewState();
}

class _InitialHomeViewState extends ConsumerState<_InitialHomeView> {
  @override
  void initState() {
    super.initState();

    final weather = ref.read(mainWeatherProvider);
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder();
    /*
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 400,
          width: 400,
          child: Image.asset("assets/images/1.png"),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Text(
            "We don't know your location yet, but you can help us find you.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(height: 20),
        const RequestCurrentLocationButton(),
      ],
    );
    */
  }
}
