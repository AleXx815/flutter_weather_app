import 'package:flutter/material.dart';

// import 'package:flutter_weather_app/config/constants/environment.dart';

class HomeScreen extends StatelessWidget {
  static const name = "home-screen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/1.png"),
        ],
      ),
    );
  }
}
