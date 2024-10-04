import 'package:provider_app_orientation/models/chats/user.dart';

import 'message.dart';

class Conversation {
  final List<User> participants; // List of both clients and service providers
  final List<Message> messages;

  Conversation({
    required this.participants,
    required this.messages,
  });

  // Convert JSON to Conversation object
  factory Conversation.fromJson(Map<String, dynamic> json) {
    return Conversation(
      participants: (json['participants'] as List)
          .map((participant) => User.fromJson(participant))
          .toList(),
      messages: (json['messages'] as List)
          .map((message) => Message.fromJson(message))
          .toList(),
    );
  }

  // Convert Conversation object to JSON
  Map<String, dynamic> toJson() {
    return {
      'participants':
          participants.map((participant) => participant.toJson()).toList(),
      'messages': messages.map((message) => message.toJson()).toList(),
    };
  }
}
