import 'package:provider_app_orientation/models/client.dart';
import 'package:provider_app_orientation/models/serviceprovider_model.dart';

class Order {
  String status;
  String serviceType;
  String? description;
  String? multimedia;
  String time;
  String? date;
  Client client; // Reference to the Client model
  ServiceProvider serviceProvider; // Reference to the ServiceProvider model

  Order({
    required this.status,
    required this.serviceType,
    required this.client,
    required this.serviceProvider,
    this.description,
    this.multimedia,
    this.time = 'immediately',
    this.date,
  });

  // Convert JSON to Order object
  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      status: json['status'] ?? 'Pending',
      serviceType: json['serviceType'],
      client: Client.fromJson(
          json['client']), // Assuming you have a Client.fromJson metho
      serviceProvider: ServiceProvider.fromJson(json[
          'serviceProvider']), // Assuming you have a ServiceProvider.fromJson method
      description: json['description'],
      multimedia: json['multimedia'],
      time: json['time'] ?? 'immediately',
      date: json['date'],
    );
  }

  // Convert Order object to JSON
  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'serviceType': serviceType,
      'client':
          client.toJson(), // Assuming you have a toJson method in Client model
      'serviceProvider': serviceProvider
          .toJson(), // Assuming you have a toJson method in ServiceProvider model
      'description': description,
      'multimedia': multimedia,
      'time': time,
      'date': date,
    };
  }
}
