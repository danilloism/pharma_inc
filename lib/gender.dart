enum Gender {
  male,
  female;

  String get capitalized =>
      '${name[0].toUpperCase()}${name.substring(1).toLowerCase()}';
}
