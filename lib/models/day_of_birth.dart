import 'package:intl/intl.dart';

class DayOfBirth {
  const DayOfBirth._(this.date, this.age);

  final DateTime date;
  final int age;

  factory DayOfBirth.fromJson(Map<String, dynamic> json) {
    final date = DateTime.parse(json['date']);
    final age = json['age'];

    return DayOfBirth._(date, age);
  }

  @override
  String toString() => DateFormat('dd/MM/yyyy').format(date);
}
