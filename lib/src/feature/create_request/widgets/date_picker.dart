import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jalali_calendar/jalali_calendar.dart';

class DDatePicker extends StatefulWidget {
  DDatePicker({Key? key,this.title,this.type}) : super(key: key);
  String? title;
  String? type;
  @override
  _DDatePickerState createState() => _DDatePickerState();
}

class _DDatePickerState extends State<DDatePicker> {
  @override
  Widget build(BuildContext context) {
    PersianDate? date;
    return Row(
      children: [
        Text(
          widget.title??'',
          style: TextStyle(
              fontSize: widget.type == 'begin' ? 2.7 * SizeConfig.textMultiplier! : 3 * SizeConfig.textMultiplier!, color: Colors.grey),
        ),
        SizedBox(
          width: 3.6 * SizeConfig.widthMultiplier!,
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 2.6 * SizeConfig.widthMultiplier!,
                          vertical: 1.3 * SizeConfig.heightMultiplier!),
                      content: SizedBox(
                        height: 36.7 * SizeConfig.heightMultiplier!,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 5,
                              child: CupertinoDatePicker(
                                  mode: CupertinoDatePickerMode.date,
                                  initialDateTime: DateTime.now(),
                                  onDateTimeChanged: (DateTime val) {
                                    setState(() {
                                      date = PersianDate.pDate(
                                          gregorian:
                                              '${val.year}-${val.month}-${val.day}');
                                    });
                                  }),
                            ),
                            Divider(),
                            Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                    initState();
                                  },
                                  child: Text(
                                    'تایید',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize:
                                            3 * SizeConfig.textMultiplier! - 2,
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
              padding: EdgeInsets.symmetric(
                  horizontal: 2 * SizeConfig.widthMultiplier!),
              height: 8.8 * SizeConfig.heightMultiplier!,
              color: DingColors.veryLight(),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 2.2 * SizeConfig.heightMultiplier!,
                            horizontal: 2.5 * SizeConfig.widthMultiplier!),
                        child: date == null
                            ? Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 1,
                                  color: DingColors.dark(),
                                ),
                              )
                            : Text(
                                '${date!.day} ${date!.monthname} ${date!.year}',
                                style: TextStyle(
                                    fontSize: 3 * SizeConfig.textMultiplier!),
                                textAlign: TextAlign.center,
                              )),
                  ),
                  SvgPicture.asset(
                    'assets/images/clock.svg',
                    width: 3.4 * SizeConfig.heightMultiplier!,
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 2.7 * SizeConfig.widthMultiplier!,
        ),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 2.6 * SizeConfig.widthMultiplier!,
                          vertical: 1.3 * SizeConfig.heightMultiplier!),
                      content: SizedBox(
                        height: 36.7 * SizeConfig.heightMultiplier!,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 5,
                              child: CupertinoDatePicker(
                                  mode: CupertinoDatePickerMode.date,
                                  initialDateTime: DateTime.now(),
                                  onDateTimeChanged: (DateTime val) {
                                    setState(() {
                                      date = PersianDate.pDate(
                                          gregorian:
                                              '${val.year}-${val.month}-${val.day}');
                                    });
                                  }),
                            ),
                            Divider(),
                            Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                    initState();
                                  },
                                  child: Text(
                                    'تایید',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize:
                                            3 * SizeConfig.textMultiplier! - 2,
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
              padding: EdgeInsets.symmetric(
                  horizontal: 2 * SizeConfig.widthMultiplier!),
              height: 8.8 * SizeConfig.heightMultiplier!,
              color: DingColors.veryLight(),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 2.2 * SizeConfig.heightMultiplier!,
                            horizontal: 4.8 * SizeConfig.widthMultiplier!),
                        child: date == null
                            ? Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 1,
                                  color: DingColors.dark(),
                                ),
                              )
                            : Text(
                                '${date!.day} ${date!.monthname} ${date!.year}',
                                style: TextStyle(
                                    fontSize: 3 * SizeConfig.textMultiplier!),
                                textAlign: TextAlign.center,
                              )),
                  ),
                  SvgPicture.asset(
                    'assets/images/calendar.svg',
                    width: 3.4 * SizeConfig.heightMultiplier!,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
