import 'package:country/country.dart';

String formatNationalityByCode(String alphaTwoCode) {
  try {
    final country = Countries.values.singleWhere((element) =>
        element.alpha2.toUpperCase() == alphaTwoCode.toUpperCase());

    final flag = country.flagEmoji;
    final nat = country.nationality;

    return '$flag | $alphaTwoCode - $nat';
  } catch (_) {
    return alphaTwoCode;
  }
}
