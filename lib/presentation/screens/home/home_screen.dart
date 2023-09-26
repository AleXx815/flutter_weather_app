import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';

// import 'package:flutter_weather_app/config/constants/environment.dart';

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
          FilledButton(
            onPressed: () {
              getCurrentLocation();
            },
            child: const Text("Allow Location"),
          ),
        ],
      ),
    );
  }
}

class LocationPermissionDeniedException implements Exception {
  final String message;

  LocationPermissionDeniedException(
    this.message,
  );
}

Future<Position> currentLocation() async {
  LocationPermission permission;
  permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      throw LocationPermissionDeniedException(
          "El usuario denegó el permiso de ubicación.");
    }
  }
  return await Geolocator.getCurrentPosition();
}

void getCurrentLocation() async {
  try {
    Position position = await currentLocation();
    print("La latitud es: ${position.latitude}");
    print("La longitud es: ${position.longitude}");
  } catch (e) {
    if (e is LocationPermissionDeniedException) {
      // Aquí puedes mostrar un mensaje al usuario o realizar otras acciones.
      print(e.message);
    }
  }
}
