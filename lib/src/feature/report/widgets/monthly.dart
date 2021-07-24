import 'package:ding/src/feature/detailed_report/detailed_report_screen.dart';
import 'package:ding/src/feature/summary_report/summary_report_screen.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

class MonthlyPage extends StatefulWidget {
  const MonthlyPage({Key? key}) : super(key: key);

  @override
  _MonthlyPageState createState() => _MonthlyPageState();
}

class _MonthlyPageState extends State<MonthlyPage> {
  DateTime? period;

  _infoContainer() => Container(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier! * 4.5),
        height: 15 * SizeConfig.heightMultiplier!,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 8 * SizeConfig.heightMultiplier!,
                  height: 8 * SizeConfig.heightMultiplier!,
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
                      style: TextStyle(fontSize: 2*SizeConfig.textMultiplier!),
                    ),
                    Text(
                      'واحد فروش',
                      style:
                      TextStyle(fontSize: 2*SizeConfig.textMultiplier! - 2, fontWeight: FontWeight.w300),
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

  _datePickers(context) => Row(
        children: [
          Text(
            'دوره',
            style: TextStyle(
                fontSize: 2.7 * SizeConfig.textMultiplier!, color: Colors.grey),
          ),
          SizedBox(
            width: 3.6 * SizeConfig.widthMultiplier!,
          ),
          Expanded(
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
                                    onDateTimeChanged: (val) {
                                      setState(() {
                                        period = val;
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
                                          fontSize:
                                              3 * SizeConfig.textMultiplier! -
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
                padding: EdgeInsets.symmetric(
                    horizontal: 4.7 * SizeConfig.widthMultiplier!),
                height: 8.8 * SizeConfig.heightMultiplier!,
                color: DingColors.veryLight(),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 2.2 * SizeConfig.heightMultiplier!,
                              horizontal: 4.8 * SizeConfig.widthMultiplier!),
                          child: period == null
                              ? Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 1,
                                    color: DingColors.dark(),
                                  ),
                                )
                              : Text(
                                  '${period!.day} ${period!.month} ${period!.year}',
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

  _bottomButtons() => Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailedReportScreen()));
              },
              child: Container(
                margin:
                    EdgeInsets.only(bottom: SizeConfig.heightMultiplier! * 5),
                alignment: Alignment.center,
                height: 8.8 * SizeConfig.heightMultiplier!,
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
          ),
          SizedBox(
            width: SizeConfig.widthMultiplier! * 3,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SummaryReportScreen()));
              },
              child: Container(
                margin:
                    EdgeInsets.only(bottom: SizeConfig.heightMultiplier! * 5),
                alignment: Alignment.center,
                height: 8.8 * SizeConfig.heightMultiplier!,
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
                padding: EdgeInsets.symmetric(
                    horizontal: 7.3 * SizeConfig.widthMultiplier!),
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
