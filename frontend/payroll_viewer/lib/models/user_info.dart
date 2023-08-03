class UserInfo {
  int id;
  String name;
  String email;
  String firstname;
  String middleInitial;
  String lastname;
  String address;
  String coordinates;
  double? xCoordinate;
  double? yCoordinate;

  UserInfo({
    required this.id,
    required this.name,
    required this.email,
    required this.firstname,
    required this.middleInitial,
    required this.lastname,
    required this.address,
    required this.coordinates,
  }) {
    //Split the value of coordinates into x and y
    final values = coordinates.split('|');
    xCoordinate = double.tryParse(values[0]) ?? 0.0;
    yCoordinate = double.tryParse(values[1]) ?? 0.0;
  }

  //Map values from a JSON object
  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      firstname: json['firstname'],
      middleInitial: json['middle_initial'],
      lastname: json['lastname'],
      address: json['address'],
      coordinates: json['coordinates'],
    );
  }
}
