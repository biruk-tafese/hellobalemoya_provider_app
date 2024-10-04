// Reference model for the reference data
class Reference {
  String? fullName;
  String? phone;
  String? relationship;
  String? address;
  String? insurance;

  Reference({
    this.fullName,
    this.phone,
    this.relationship,
    this.address,
    this.insurance,
  });

  factory Reference.fromJson(Map<String, dynamic> json) {
    return Reference(
      fullName: json['fullName'],
      phone: json['phone'],
      relationship: json['relationship'],
      address: json['address'],
      insurance: json['insurance'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'phone': phone,
      'relationship': relationship,
      'address': address,
      'insurance': insurance,
    };
  }
}
