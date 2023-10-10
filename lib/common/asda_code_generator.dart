import 'dart:math';

import 'package:intl/intl.dart';

class AsdaCodeGenerator {
  final prefix = 'ASDX';
  final List<String> stores = List.empty(growable: true);

  AsdaCodeGenerator() {
    stores.add('2477');
    stores.add('2484');
    stores.add('2188');
  }

  String _generateJulianDay(int day, int month, int year) {
    const oneDay = 1000 * 60 * 60 * 24;
    final now = DateTime.utc(year, month - 1, day);
    final start = DateTime.utc(year, 0, 0);
    final diff = now.difference(start);
    final newDay = (diff.inMilliseconds / oneDay).floor();

    var result = newDay.toString();
    if (result.length < 3) {
      result = '0$result';
    }

    return result;
  }

  String _getAsdaYear(int year) {
    final yearString = year.toString();
    final size = yearString.length;
    return yearString.substring(size - 1);
  }

  String _getTime(DateTime date) {
    final DateFormat formatter = DateFormat("hhmmss");
    return formatter.format(date);
  }

  String calculate() {
    Random rdn;
    rdn = Random();
    final total = stores.length;
    final rIdx = 0 + rdn.nextInt(total - 0);
    final now = DateTime.now();
    final storeId = stores[rIdx];
    final julianDay = _generateJulianDay(now.day, now.month, now.year);
    final asdaYear = _getAsdaYear(now.year);
    final time = _getTime(now);

    final code = '$prefix$storeId$asdaYear$julianDay$time';
    return code;
  }
}
