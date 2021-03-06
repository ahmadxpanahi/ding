import 'package:ding/src/core/logger/logger.dart';
import 'package:jalali_calendar/jalali_calendar.dart';
import 'package:ding/src/utils/extensions.dart';

class DDateUtils {
  static PersianDate createPersianDate(int year, int month, int day) {
    var gregorianDate = PersianDate().jalaliToGregorian(year, month, day);

    int gregorianYear = gregorianDate[0];
    int gregorianMonth = gregorianDate[1];
    int gregorianDay = gregorianDate[2];

    return PersianDate.pDate(
        defualtFormat: "yyyy-mm-dd",
        gregorian:
            "$gregorianYear-${gregorianMonth.timePadded}-${gregorianDay.timePadded}");
  }

  static String createPersianISO(PersianDate date, DateTime time) {
    return "${date.year}-${date.month!.timePadded}-${date.day!.timePadded}T${time.hour.timePadded}:${time.minute.timePadded}:00.000Z";
  }

  static String createISOFromPersian(PersianDate date, DateTime time) {
    var gregorian =
        PersianDate().jalaliToGregorian(date.year!, date.month!, date.day!);
    int year = gregorian[0];
    int month = gregorian[1];
    int day = gregorian[2];

    return "$year-${month.timePadded}-${day.timePadded}T${time.hour.timePadded}:${time.minute.timePadded}:00.000Z";
  }

  static PersianDate createPersianDateFromGregorian(DateTime? date) {
    if (date == null) return PersianDate();

    PersianDate? persian;
    try {
      persian = PersianDate.pDate(
          defualtFormat: "yyyy-mm-dd",
          gregorian:
              '${date.year}-${date.month.timePadded}-${date.day.timePadded}');
      Log.w(date.month);
      Log.wtf(persian.monthname);
    } on FormatException catch (e) {
      Log.e("FormatException occured for ${date.toString()}");
      persian = PersianDate();
    }
    return persian;
  }

  static PersianDate persianDateFromSlashString(String slashString) {
    int year = int.parse(slashString.substring(0, slashString.indexOf('/')));
    int month = int.parse(slashString.substring(
        slashString.indexOf('/') + 1, slashString.lastIndexOf('/')));
    int day =
        int.parse(slashString.substring(slashString.lastIndexOf('/') + 1));

    return createPersianDate(year, month, day);
  }

  static DateTime createGregorianFromPersian(PersianDate date) {
    var gregorian =
        PersianDate().jalaliToGregorian(date.year!, date.month!, date.day!);
    int year = gregorian[0];
    int month = gregorian[1];
    int day = gregorian[2];

    return DateTime(year, month, day);
  }

  static String getCurrentPersianDay() {
    var year = "${DateTime.now().year}";
    var month = DateTime.now().month.timePadded;
    var day = DateTime.now().day.timePadded;

    return PersianDate.pDate(
            defualtFormat: "yyyy-mm-dd", gregorian: "$year-$month-$day")
        .weekdayname;
  }

  static String getCurrentPersianDescribe() {
    var year = "${DateTime.now().year}";
    var month = DateTime.now().month.timePadded;
    var day = DateTime.now().day.timePadded;
    var p = PersianDate.pDate(
        defualtFormat: "yyyy-mm-dd", gregorian: "$year-$month-$day");

    return "${p.year}/${p.month!.timePadded}/${p.day!.timePadded} ${p.hour!.timePadded}:${p.minute!.timePadded}";
  }
}
