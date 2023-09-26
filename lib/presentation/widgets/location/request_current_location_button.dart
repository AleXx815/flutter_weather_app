import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:flutter_weather_app/presentation/widgets/widgets.dart';

class RequestCurrentLocationButton extends StatelessWidget {
  const RequestCurrentLocationButton({super.key});

  Future<Position> currentLocation(BuildContext context) async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        // ignore: use_build_context_synchronously
        showCustomSnackbar(context);
      }
    }
    return await Geolocator.getCurrentPosition();
  }

  void getCurrentLocation(BuildContext context) async {
    try {
      Position position = await currentLocation(context);
      final double currentLat = position.latitude;
      final double currentLon = position.longitude;
    } catch (e) {
      if (e is LocationPermissionDeniedError) {
        return null;
      }
    }
  }

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Permission denied, try to do it manually."),
        action: SnackBarAction(
          label: "Go settings",
          onPressed: () {
            openAppSettings();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        getCurrentLocation(context);
      },
      child: const Text("Allow Location"),
    );
  }
}
