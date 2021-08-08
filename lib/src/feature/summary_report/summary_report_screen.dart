import 'package:ding/src/feature/summary_report/bloc/su_report_bloc.dart';
import 'package:ding/src/feature/summary_report/bloc/su_report_event.dart';
import 'package:ding/src/feature/summary_report/bloc/su_report_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/date_utils.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:swagger/api.dart' as api;

class SummaryReportScreen extends StatelessWidget {
  SummaryReportScreen(this.reports);
  final List<api.GetSummaryEmployeeReportForViewDto> reports;

  Widget _infoContainer() => Column(
    children: [
      Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier! * 4.5),
        height: 15.0.rh,
        child: Row(
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
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'توسعه ارتباطات دینگ',
                  style:
                  TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                ),
                Text(
                  'واحد فروش',
                  style:
                  TextStyle(fontSize: 13, fontWeight: FontWeight.w200),
                ),
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier! * 4.5,
            vertical: SizeConfig.heightMultiplier!),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'شروع',
                  style:
                  TextStyle(fontSize: 2.2.rt + 1, color: Colors.grey),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier! * 3,
                ),
                Text(
                  '02 خرداد 1398',
                  style: TextStyle(
                      fontSize: 2.2.rt + 1, color: DingColors.dark()),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'پایان',
                  style:
                  TextStyle(fontSize: 2.2.rt + 1, color: Colors.grey),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier! * 3,
                ),
                Text(
                  '02 خرداد 1398',
                  style: TextStyle(
                      fontSize: 2.2.rt + 1, color: DingColors.dark()),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );

  _item(title, time) => Container(
    color: Colors.white,
    height: 8.5.rh,
    child: Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier! * 4.5,
                vertical: SizeConfig.heightMultiplier!),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 2.2.rt + 1),
                ),
                Text(
                  time,
                  style: TextStyle(fontSize: 2.2.rt + 1),
                ),
              ],
            ),
          ),
        ),
        Divider()
      ],
    ),
  );


  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: DingColors.veryLight(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          padding: EdgeInsets.only(top: 2.2.rh),
          alignment: Alignment.center,
          color: DingColors.primary(),
          height: 13.3.rh,
          child: Row(
            children: [
              Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 2.4.rw),
                      child: IconButton(
                        color: Colors.white,
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 3.0.rh,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  )),
              Text(
                'گزارش خلاصه',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 2.73.rt, color: Colors.white),
              ),
              Expanded(child: SizedBox())
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _infoContainer(),
            _item('زمان شیفت', '48:00:00'),
            _item('زمان کاری', '48:00:00'),
            _item('زمان تاخیر', '48:00:00'),
            _item('زمان تعجیل در خروج', '48:00:00'),
            _item('زمان غیبت', '48:00:00'),
            _item('زمان اضافه کاری', '48:00:00'),
            _item('زمان ماموریت', '48:00:00'),
            _item('زمان مرخصی', '48:00:00'),
            _item('روز های مرخصی', '05'),
          ],
        ),
      ));
}
