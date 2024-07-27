class HolidayRequest {
  final String id;
  final String name;
  final String date;
  final String status;

  HolidayRequest({
    required this.id,
    required this.name,
    required this.date,
    required this.status,
  });

  // Factory method to create an instance from a map
  factory HolidayRequest.fromMap(Map<String, dynamic> map) {
    return HolidayRequest(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      date: map['date'] ?? '',
      status: map['status'] ?? '',
    );
  }

  // Method to convert instance to map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'date': date,
      'status': status,
    };
  }

  @override
  String toString() {
    return 'HolidayRequest(id: $id, name: $name, date: $date, status: $status)'; // Added status
  }
}
