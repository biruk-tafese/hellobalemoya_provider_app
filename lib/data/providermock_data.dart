import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/serviceprovider_model.dart';

List<ServiceProvider> mockServiceProviders = [
  ServiceProvider(
    fullName: "Tamirat Tola",
    email: "provider1@example.com",
    phone: "+251911223344",
    serviceType: "Plumber",
    location: const LatLng(9.0207, 38.7597), // Bole, Addis Ababa
    locationDescription: "Bole, Addis Ababa",
    distance: "2 km",
    status: "Online",
    services: [
      "Pipe repair",
      "Leak detection",
      "Water heater installation"
    ], // Add this line
  ),
  ServiceProvider(
    fullName: "Kidiane Beyene",
    email: "provider2@example.com",
    phone: "+251922334455",
    serviceType: "Electrician",
    location: const LatLng(9.0054, 38.7069), // Megenagna, Addis Ababa
    locationDescription: "Megenagna, Addis Ababa",
    distance: "5 km",
    status: "Offline",
    services: [
      "Wiring",
      "Circuit breaker repair",
      "Lighting installation"
    ], // Add this line
  ),
  // Add similar lines for other service providers
  ServiceProvider(
    fullName: "Beza Seyum",
    email: "provider3@example.com",
    phone: "+251933445566",
    serviceType: "Carpenter",
    location: const LatLng(9.0391, 38.7872), // Gerji, Addis Ababa
    locationDescription: "Gerji, Addis Ababa",
    distance: "3 km",
    status: "Online",
    services: [
      "Furniture repair",
      "Cabinet installation",
      "Custom woodwork"
    ], // Add this line
  ),
  // Continue for the remaining service providers...
];
