class LocationPermissionDeniedError implements Exception {
  final String message;

  LocationPermissionDeniedError(
    this.message,
  );
}
