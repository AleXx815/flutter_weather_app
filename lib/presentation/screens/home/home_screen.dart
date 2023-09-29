import 'package:flutter/material.dart';
import 'package:flutter_weather_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const name = "home-screen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
      ),
    );
  }
}
