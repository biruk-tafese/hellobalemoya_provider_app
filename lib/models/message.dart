// Message model for message data
class Message {
  String? callerData;
  String? message;

  Message({
    this.callerData,
    this.message,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      callerData: json['callerData'],
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'callerData': callerData,
      'message': message,
    };
  }
}
