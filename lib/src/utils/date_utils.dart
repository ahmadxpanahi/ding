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

  static String createISO(PersianDate date, DateTime time) {
    return "${date.year}-${date.month!.timePadded}-${date.day!.timePadded}T${time.hour.timePadded}:${time.minute.timePadded}:00.000Z";
  }
}
