// ignore_for_file: constant_identifier_names

import 'dart:collection';

import 'package:country/country.dart';

enum Nationality {
  AU,
  BR,
  CA,
  CH,
  DE,
  DK,
  ES,
  FI,
  FR,
  GB,
  IE,
  IN,
  IR,
  MX,
  NL,
  NO,
  NZ,
  RS,
  TR,
  UA,
  US;

  String get lowerCaseName => name.toLowerCase();

  String beautify() {
    try {
      final flag = country.flagEmoji;
      final nat = country.nationality;

      return '$flag | $nat';
    } catch (e) {
      return name;
    }
  }

  String beautifyWithoutFlag() {
    try {
      final nat = country.nationality;

      return '$name | $nat';
    } catch (e) {
      return name;
    }
  }

  Country get country {
    return Countries.values
        .singleWhere((element) => element.alpha2.toUpperCase() == name);
  }

  static List<String> get valuesAsStringList =>
      UnmodifiableListView(values.map((val) => val.name));

  static String get queryParamValue {
    return values.fold('', (previousValue, element) {
      if (previousValue.isEmpty) {
        return element.lowerCaseName;
      }

      return '${previousValue.toLowerCase()},${element.lowerCaseName}';
    });
  }

  static Nationality fromString(String val) {
    return values
        .singleWhere((element) => element.lowerCaseName == val.toLowerCase());
  }
}
