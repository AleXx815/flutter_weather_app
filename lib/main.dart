import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_weather_app/config/router/app_router.dart';
import 'package:flutter_weather_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    const bool isDarkMode = false;

    final ThemeData lightTheme = AppTheme.getLightTheme();

    final ThemeData darkTheme = AppTheme.getDarkTheme();

    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? darkTheme : lightTheme,
    );
  }
}
