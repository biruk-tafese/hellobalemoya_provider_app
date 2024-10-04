class ServiceRequest {
  String status;
  String client;
  String serviceProvider;
  String serviceType;
  String? description;
  String? multimedia;
  String time;
  String? date;

  ServiceRequest({
    required this.status,
    required this.client,
    required this.serviceProvider,
    required this.serviceType,
    this.description,
    this.multimedia,
    required this.time,
    this.date,
  });

  // Convert JSON to ServiceRequest object
  factory ServiceRequest.fromJson(Map<String, dynamic> json) {
    return ServiceRequest(
      status: json['status'],
      client: json['client'],
      serviceProvider: json['serviceProvider'],
      serviceType: json['serviceType'],
      description: json['description'],
      multimedia: json['multimedia'],
      time: json['time'],
      date: json['date'],
    );
  }

  // Convert ServiceRequest object to JSON
  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'client': client,
      'serviceProvider': serviceProvider,
      'serviceType': serviceType,
      'description': description,
      'multimedia': multimedia,
      'time': time,
      'date': date,
    };
  }
}
