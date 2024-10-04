class Notification {
  String? id; // For notification ID from the backend
  String recipientId; // The Service Provider's ID (recipient)
  String message; // Notification message
  DateTime? createdAt; // When the notification was created
  bool read; // If the notification has been read or not

  Notification({
    this.id,
    required this.recipientId,
    required this.message,
    this.createdAt,
    this.read = false,
  });

  // Factory method to create a Notification object from JSON
  factory Notification.fromJson(Map<String, dynamic> json) {
    return Notification(
      id: json['_id'],
      recipientId: json['recipient'],
      message: json['message'],
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      read: json['read'] ?? false,
    );
  }

  // Method to serialize the Notification object to JSON
  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'recipient': recipientId,
      'message': message,
      'createdAt': createdAt?.toIso8601String(),
      'read': read,
    };
  }
}
