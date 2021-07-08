import 'package:flutter/foundation.dart';

class TodayData {
  late final String name;
  late final DateTime enterTime;
  late final String imgUrl;

  TodayData(
      {required this.enterTime, required this.imgUrl, required this.name});
}
