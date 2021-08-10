import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/date_utils.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:jalali_calendar/jalali_calendar.dart';
import 'package:swagger/api.dart' as req;
import 'package:persian_number_utility/persian_number_utility.dart';

class MyRequestsItem extends StatelessWidget {
  int? type;
  int? status;
  DateTime? date;
  String? info1;
  String? info2;

  MyRequestsItem(
      {Key? key, this.status, this.date, this.info1, this.info2, this.type})
      : super(key: key);

  String myType() {
    if (type! < 6) {
      return 'vacation';
    } else if (type == 6) {
      return 'mission';
    } else if (type == 7) {
      return 'enter';
    } else {
      return 'leave';
    }
  }

  Color _statusColor() => status == 2
      ? DingColors.primary()
      : status == 3
          ? DingColors.warning()
          : Colors.grey;

  String _statusText() => status == 2
      ? "تایید شد"
      : status == 3
          ? 'رد شد'
          : 'درحال بررسی';

  Color _typeColor() => myType() == 'vacation'
      ? DingColors.secondary()
      : myType() == 'mission'
          ? Colors.grey
          : DingColors.primary();

  String _typeText() => myType() == 'vacation'
      ? "مرخصی"
      : myType() == 'mission'
          ? 'ماموریت'
          : myType() == 'enter'
              ? 'ورود'
              : 'خروج';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.7.rh,
      margin: EdgeInsets.only(top: 8),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: _typeColor(),
              child: Column(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        _typeText(),
                        style: TextStyle(
                            color: myType() == 'vacation'
                                ? DingColors.dark()
                                : Colors.white,
                            fontSize: 2.73.rt),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white.withOpacity(0.2),
                      child: Column(
                        children: [
                          Expanded(
                              child: Row(
                            children: [
                              Text(
                                '${date?.day.toString().toPersianDigit()} ${DDateUtils.createPersianDateFromGregorian(date).monthname}',
                                style: TextStyle(
                                    color: myType() == 'vacation'
                                        ? DingColors.dark()
                                        : Colors.white,
                                    fontSize: 2.2.rt),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          )),
                          Expanded(
                            child: date != null
                                ? Text(
                                    '${date!.hour.toString().toPersianDigit()}:${date!.minute.toString().toPersianDigit()}:${date!.second.toString().toPersianDigit()}',
                                    style: TextStyle(
                                        color: myType() == 'vacation'
                                            ? DingColors.dark()
                                            : Colors.white,
                                        fontSize: 2.2.rt),
                                  )
                                : SizedBox(),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 3 + SizeConfig.widthMultiplier!,
                              height: 3 + SizeConfig.widthMultiplier!,
                              decoration: BoxDecoration(
                                  color: _typeColor(),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              info1 ?? '',
                              style: TextStyle(
                                  fontSize: 2.2.rt, color: DingColors.dark()),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 3 + SizeConfig.widthMultiplier!,
                              height: 3 + SizeConfig.widthMultiplier!,
                              decoration: BoxDecoration(
                                  color: _typeColor(),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              info2 ?? '',
                              style: TextStyle(
                                  fontSize: 2.2.rt, color: DingColors.dark()),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    _statusText(),
                    style: TextStyle(fontSize: 2.2.rt, color: _statusColor()),
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier!,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: SizeConfig.widthMultiplier! * 5,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
