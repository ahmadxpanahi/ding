import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jalali_calendar/jalali_calendar.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class CustomPage extends StatefulWidget {
  const CustomPage({Key? key}) : super(key: key);

  @override
  _CustomPageState createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
  PersianDate? begin;
  PersianDate? end;

  _infoContainer() => Container(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier! * 4.5),
        height: 15.0.rh,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 8.0.rh,
                  height: 8.0.rh,
                  decoration: BoxDecoration(
                      color: DingColors.light(),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn1.iconfinder.com/data/icons/avatar-97/32/avatar-02-512.png'),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'پژمان شفیعی',
                      style:
                          TextStyle(fontSize: 2 * SizeConfig.textMultiplier!),
                    ),
                    Text(
                      'واحد فروش',
                      style: TextStyle(
                          fontSize: 2 * SizeConfig.textMultiplier! - 2,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                )
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/list.svg',
                  width: 25,
                ))
          ],
        ),
      );

  _datePickers(context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'شروع',
                style: TextStyle(fontSize: 2.7.rt, color: Colors.grey),
              ),
              SizedBox(
                width: 3.6.rw,
              ),
              Expanded(
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
                                        mode: CupertinoDatePickerMode.date,
                                        initialDateTime: DateTime.now(),
                                        onDateTimeChanged: (DateTime val) {
                                          setState(() {
                                            var year = val.year.timePadded;
                                            var month = val.month.timePadded;
                                            var day = val.day.timePadded;
                                            begin = PersianDate.pDate(
                                                gregorian:
                                                    '${year}-${month}-${day}');
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
                                              fontSize: 3 *
                                                      SizeConfig
                                                          .textMultiplier! -
                                                  2,
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
                    padding: EdgeInsets.symmetric(horizontal: 4.7.rw),
                    height: 8.8.rh,
                    color: DingColors.veryLight(),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.2.rh, horizontal: 4.8.rw),
                              child: begin == null
                                  ? Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 1,
                                        color: Colors.grey,
                                      ),
                                    )
                                  : Text(
                                      '${begin!.day} ${begin!.monthname} ${begin!.year}',
                                      style: TextStyle(fontSize: 3.0.rt),
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
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier!,
          ),
          Row(
            children: [
              Text(
                'پایان',
                style: TextStyle(fontSize: 3.0.rt, color: Colors.grey),
              ),
              SizedBox(
                width: 3.6.rw,
              ),
              Expanded(
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
                                      mode: CupertinoDatePickerMode.date,
                                      initialDateTime: DateTime.now(),
                                      onDateTimeChanged: (val) {
                                        var year = val.year.timePadded;
                                        var month = val.month.timePadded;
                                        var day = val.day.timePadded;
                                        setState(() {
                                          end = PersianDate.pDate(
                                              gregorian:
                                              '${year}-${month}-${day}');
                                        });
                                      },
                                    ),
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
                                              fontSize: 3 *
                                                      SizeConfig
                                                          .textMultiplier! -
                                                  2,
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
                    padding: EdgeInsets.symmetric(horizontal: 4.7.rw),
                    height: 8.8.rh,
                    color: DingColors.veryLight(),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.2.rh, horizontal: 4.8.rw),
                              child: end == null
                                  ? Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 1,
                                        color: Colors.grey,
                                      ),
                                    )
                                  : Text(
                                      '${end!.day} ${end!.monthname} ${end!.year}',
                                      style: TextStyle(fontSize: 3.0.rt),
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
          ),
        ],
      );

  _bottomButtons() => Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: SizeConfig.heightMultiplier! * 5),
              alignment: Alignment.center,
              height: 8.8.rh,
              decoration: BoxDecoration(
                color: DingColors.primary(),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                'گزارش تفضیلی',
                style: TextStyle(
                    fontSize: SizeConfig.textMultiplier! * 2.5,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: SizeConfig.widthMultiplier! * 3,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: SizeConfig.heightMultiplier! * 5),
              alignment: Alignment.center,
              height: 8.8.rh,
              decoration: BoxDecoration(
                color: DingColors.secondary(),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                'گزارش خلاصه',
                style: TextStyle(
                    fontSize: SizeConfig.textMultiplier! * 2.5,
                    color: DingColors.dark()),
              ),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            _infoContainer(),
            Divider(
              color: DingColors.light(),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.3.rw),
                child: Column(
                  children: [
                    Expanded(
                      child: _datePickers(context),
                    ),
                    _bottomButtons()
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
