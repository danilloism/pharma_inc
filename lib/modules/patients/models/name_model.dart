class NameModel {
  final String title;
  final String firstName;
  final String lastName;

  const NameModel(
      {required this.title, required this.firstName, required this.lastName});

  factory NameModel.fromJson(Map<String, dynamic> json) {
    return NameModel(
      title: json['title'],
      firstName: json['first'],
      lastName: json['last'],
    );
  }

  @override
  String toString() => '$title $firstName $lastName'.trim();
}
