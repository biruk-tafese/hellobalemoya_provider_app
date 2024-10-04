class ServiceCategory {
  String name;

  ServiceCategory({
    required this.name,
  });

  // Convert JSON to ServiceCategory object
  factory ServiceCategory.fromJson(Map<String, dynamic> json) {
    return ServiceCategory(
      name: json['name'],
    );
  }

  // Convert ServiceCategory object to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }
}
