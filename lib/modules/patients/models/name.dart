class Name {
  final String title;
  final String firstName;
  final String lastName;

  const Name(
      {required this.title, required this.firstName, required this.lastName});

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      title: json['title'],
      firstName: json['first'],
      lastName: json['last'],
    );
  }

  @override
  String toString() => '$title $firstName $lastName'.trim();
}
