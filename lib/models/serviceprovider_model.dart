import 'package:provider_app_orientation/models/location.dart';
import 'package:provider_app_orientation/models/message.dart';
import 'package:provider_app_orientation/models/reference.dart';
import 'package:provider_app_orientation/models/review.dart';

// Main ServiceProvider model
class ServiceProvider {
  String? id;
  String username;
  String firstName;
  String lastName;
  String email;
  String password;
  String? address;
  String? gender;
  String phone;
  String? bio;
  String? profilePicture;
  Review? review;
  List<String>? socialMediaLinks;
  String? criminalBackground;
  String? role;
  DateTime? registrationDate;
  String? approvalStatus;
  String? serviceType;
  List<String>? serviceHistory; // List of service order IDs
  Location? location;
  List<String>? uploadedDocuments;
  List<String>? uploadedImages;
  bool? notificationEnabled;
  bool? locationEnabled;
  Reference? reference;
  List<String>? conversations; // List of conversation IDs
  List<Message>? messages; // List of messages

  ServiceProvider({
    this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    this.address,
    this.gender,
    required this.phone,
    this.bio,
    this.profilePicture,
    this.review,
    this.socialMediaLinks,
    this.criminalBackground,
    this.role = "Service Provider",
    this.registrationDate,
    this.approvalStatus = "Pending",
    this.serviceType,
    this.serviceHistory,
    this.location,
    this.uploadedDocuments,
    this.uploadedImages,
    this.notificationEnabled,
    this.locationEnabled,
    this.reference,
    this.conversations,
    this.messages,
  });

  // Factory method to create a ServiceProvider object from JSON
  factory ServiceProvider.fromJson(Map<String, dynamic> json) {
    return ServiceProvider(
      id: json['_id'],
      username: json['username'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      password:
          json['password'], // You might want to omit the password for security
      address: json['address'],
      gender: json['gender'],
      phone: json['phone'],
      bio: json['bio'],
      profilePicture: json['profilePicture'],
      review: json['review'] != null ? Review.fromJson(json['review']) : null,
      socialMediaLinks: json['socialMediaLinks'] != null
          ? List<String>.from(json['socialMediaLinks'])
          : null,
      criminalBackground: json['backgroundCheck'] != null
          ? json['backgroundCheck']['criminalBackground']
          : null,
      role: json['role'],
      registrationDate: json['registrationDate'] != null
          ? DateTime.parse(json['registrationDate'])
          : null,
      approvalStatus: json['approvalStatus'],
      serviceType: json['serviceType'],
      serviceHistory: json['serviceHistory'] != null
          ? List<String>.from(json['serviceHistory'])
          : null,
      location:
          json['location'] != null ? Location.fromJson(json['location']) : null,
      uploadedDocuments: json['uploadedDocuments'] != null
          ? List<String>.from(
              json['uploadedDocuments'].map((doc) => doc['path']))
          : null,
      uploadedImages: json['uploadedImages'] != null
          ? List<String>.from(json['uploadedImages'].map((img) => img['path']))
          : null,
      notificationEnabled: json['settings'] != null
          ? json['settings']['notificationEnabled']
          : null,
      locationEnabled:
          json['settings'] != null ? json['settings']['locationEnabled'] : null,
      reference: json['Reference'] != null
          ? Reference.fromJson(json['Reference'])
          : null,
      conversations: json['conversations'] != null
          ? List<String>.from(json['conversations'])
          : null,
      messages: json['messages'] != null
          ? List<Message>.from(
              json['messages'].map((msg) => Message.fromJson(msg)))
          : null,
    );
  }

  // Method to serialize the ServiceProvider object to JSON
  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'username': username,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password, // Omit or encrypt password before sending
      'address': address,
      'gender': gender,
      'phone': phone,
      'bio': bio,
      'profilePicture': profilePicture,
      'review': review?.toJson(),
      'socialMediaLinks': socialMediaLinks,
      'backgroundCheck': {
        'criminalBackground': criminalBackground,
      },
      'role': role,
      'registrationDate': registrationDate?.toIso8601String(),
      'approvalStatus': approvalStatus,
      'serviceType': serviceType,
      'serviceHistory': serviceHistory,
      'location': location?.toJson(),
      'uploadedDocuments': uploadedDocuments,
      'uploadedImages': uploadedImages,
      'settings': {
        'notificationEnabled': notificationEnabled,
        'locationEnabled': locationEnabled,
      },
      'Reference': reference?.toJson(),
      'conversations': conversations,
      'messages': messages?.map((msg) => msg.toJson()).toList(),
    };
  }
}
