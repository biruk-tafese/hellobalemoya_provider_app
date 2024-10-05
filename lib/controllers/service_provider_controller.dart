import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:provider_app_orientation/models/serviceprovider_model.dart';

class ServiceProviderController {
  final String baseUrl; // Your backend base URL

  ServiceProviderController({required this.baseUrl});

  // Login for service provider ServiceProvider
  Future<ServiceProvider?> loginServiceProvider(
      String email, String password) async {
    final response = await http.post(
      Uri.parse(
          '$baseUrl/auth/login'), // Change this URL to your login endpoint
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return ServiceProvider.fromJson(jsonDecode(
          response.body)['data']); // Adjust based on your API response
    } else {
      // Handle errors here
      print('Error logging in Service Provider: ${response.body}');
      return null;
    }
  }
}
