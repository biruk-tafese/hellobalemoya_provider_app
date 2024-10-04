class Client {
  String fullName;
  String password;
  String status;
  String email;
  String username;
  String phone;
  String? address; // Optional field
  String role;
  double? latitude; // Optional field
  double? longitude; // Optional field
  DateTime registrationDate; // Dart DateTime for date
  List<String>
      favorites; // Assuming favorites are stored as a list of strings (ObjectId references)
  String? profilePicture; // Optional field

  Client({
    required this.fullName,
    required this.password,
    this.status = 'pending',
    required this.email,
    required this.username,
    required this.phone,
    this.address,
    this.role = 'Client',
    this.latitude,
    this.longitude,
    DateTime? registrationDate,
    List<String>? favorites,
    this.profilePicture,
  })  : registrationDate = registrationDate ?? DateTime.now(),
        favorites = favorites ?? [];

  // Convert JSON to Client object
  factory Client.fromJson(Map<String, dynamic> json) {
    return Client(
      fullName: json['fullName'],
      password: json['password'],
      status: json['status'] ?? 'pending',
      email: json['email'],
      username: json['username'],
      phone: json['phone'],
      address: json['address'],
      role: json['role'] ?? 'Client',
      latitude: json['latitude']?.toDouble(),
      longitude: json['longitude']?.toDouble(),
      registrationDate: DateTime.parse(json['registrationDate']),
      favorites: List<String>.from(json['favorites'] ?? []),
      profilePicture: json['profilePicture'],
    );
  }

  // Convert Client object to JSON
  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'password': password,
      'status': status,
      'email': email,
      'username': username,
      'phone': phone,
      'address': address,
      'role': role,
      'latitude': latitude,
      'longitude': longitude,
      'registrationDate': registrationDate.toIso8601String(),
      'favorites': favorites,
      'profilePicture': profilePicture,
    };
  }
}
