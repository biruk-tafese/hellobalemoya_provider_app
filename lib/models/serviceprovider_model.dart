import 'package:google_maps_flutter/google_maps_flutter.dart';

class ServiceProvider {
  final String fullName;
  final String email;
  final String phone;
  final String serviceType;
  final LatLng location;
  final String locationDescription;
  final String distance;
  final String status;
  final List<String> services;

  ServiceProvider({
    required this.fullName,
    required this.email,
    required this.phone,
    required this.serviceType,
    required this.location,
    required this.locationDescription,
    required this.distance,
    required this.status,
    required this.services,
  });
}
