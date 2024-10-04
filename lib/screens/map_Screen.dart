// lib/features/map/screens/map_screen.dart
import 'package:flutter/material.dart';
import 'package:provider_app_orientation/models/serviceprovider_model.dart';
import '../data/providermock_data.dart';
import '../UI/map/mapview_page.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Service Providers Map')),
      body: MapviewPage(
        serviceProviders: mockServiceProviders,
        onMarkerTapped: (ServiceProvider value) {},
      ),
    );
  }
}
