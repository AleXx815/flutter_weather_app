import 'package:flutter/material.dart';
// import 'package:flutter_weather_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // const bool isDarkMode = true;

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: AppTheme().getTheme(),
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
