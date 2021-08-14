import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/utils/date_utils.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jalali_calendar/jalali_calendar.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class DDatePicker extends StatefulWidget {
  DDatePicker({
    Key? key,
    this.title,
    this.type,
    this.daily = false,
    this.onChangeDate,
    this.onChangeTime,
  }) : super(key: key);
  String? title;
  String? type;
  bool daily;
  Function(PersianDate)? onChangeDate;
  Function(DateTime)? onChangeTime;

  @override
  _DDatePickerState createState() => _DDatePickerState();
}

class _DDatePickerState extends State<DDatePicker> {
  DateTime? time;
  PersianDate? date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.title ?? '',
          style: TextStyle(
              fontSize: widget.type == 'begin' ? 2.7.rt : 3.0.rt,
              color: Colors.grey),
        ),
        SizedBox(
          width: 3.6.rw,
        ),
        widget.daily
            ? SizedBox()
            : Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) {
                          return AlertDialog(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 2.6.rw, vertical: 1.3.rh),
                            content: SizedBox(
                              height: 36.7.rh,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: CupertinoDatePicker(
                                        mode: CupertinoDatePickerMode.time,
                                        initialDateTime: DateTime.now(),
                                        onDateTimeChanged: (DateTime val) {
                                          setState(() {
                                            time = val;

                                            if (widget.onChangeTime != null) {
                                              widget.onChangeTime!(time!);
                                            }
                                          });
                                        }),
                                  ),
                                  Divider(),
                                  Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'تایید',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 3.0.rt - 2,
                                              color: DingColors.primary()),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 2.0.rw),
                    height: 7.5.rh,
                    color: DingColors.veryLight(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 1.5.rh, horizontal: 1.5.rw),
                              child: time == null
                                  ? Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 1,
                                        color: Colors.grey,
                                      ),
                                    )
                                  : Text(
                                      '${time?.hour.timePadded.toPersianDigit()}:${time?.minute.timePadded.toPersianDigit()}',
                                      style: TextStyle(fontSize: 4.8.rw),
                                      key: UniqueKey(),
                                      textAlign: TextAlign.center,
                                    )),
                        ),
                        SvgPicture.asset(
                          'assets/images/clock.svg',
                          width: 5.9.rw,
                        )
                      ],
                    ),
                  ),
                ),
              ),
        SizedBox(
          width: 2.7.rw,
        ),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              DatePicker.showDatePicker(
                context,
                minYear: 1300,
                maxYear: 1450,
                confirm: Text(
                  'تایید',
                  style: TextStyle(color: DingColors.primary()),
                ),
                cancel: Text(
                  'برگشت',
                  style: TextStyle(color: DingColors.warning()),
                ),
                dateFormat: 'yyyy-mm-dd',
                onChanged: _updateDate,
                onConfirm: _updateDate,
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 2.0.rw),
              height: 7.5.rh,
              color: DingColors.veryLight(),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 1.5.rh, horizontal: 4.8.rw),
                        child: date == null
                            ? Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 1,
                                  color: Colors.grey,
                                ),
                              )
                            : Text(
                                '${date!.day} ${date!.monthname} ${date!.year}'
                                    .toPersianDigit(),
                                key: UniqueKey(),
                                style: TextStyle(fontSize: 2.5.rt),
                                textAlign: TextAlign.center,
                              )),
                  ),
                  SvgPicture.asset(
                    'assets/images/calendar.svg',
                    width: 3.4.rh,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  void _updateDate(int? year, int? month, int? day) {
    setState(() {
      date = DDateUtils.createPersianDate(year!, month!, day!);
      if (widget.onChangeDate != null) {
        widget.onChangeDate!(date!);
      }
    });
  }
}
