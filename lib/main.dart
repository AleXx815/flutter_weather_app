import 'package:flutter/material.dart';
import 'package:flutter_weather_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const bool isDarkMode = false;

    final ThemeData lightTheme = AppTheme.getLightTheme();

    final ThemeData darkTheme = AppTheme.getDarkTheme();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? darkTheme : lightTheme,
      home: const Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
