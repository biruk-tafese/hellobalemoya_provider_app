class Message {
  final String id; //  the ID is a string (MongoDB ObjectId)
  final String sender; // Sender's User ID
  final String recipient; // Recipient's User ID
  final String content; // Message content
  final DateTime timestamp; // Timestamp of when the message was sent

  Message({
    required this.id,
    required this.sender,
    required this.recipient,
    required this.content,
    required this.timestamp,
  });

  // Convert JSON to Message object
  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['_id'], // MongoDB ID
      sender: json['sender'],
      recipient: json['recipient'],
      content: json['content'],
      timestamp:
          DateTime.parse(json['timestamp']), // Parsing date string to DateTime
    );
  }

  // Convert Message object to JSON
  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'sender': sender,
      'recipient': recipient,
      'content': content,
      'timestamp': timestamp.toIso8601String(), // Convert DateTime to string
    };
  }
}
