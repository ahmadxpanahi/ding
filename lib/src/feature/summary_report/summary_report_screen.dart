import 'package:ding/src/feature/summary_report/widgets/summary_report_item.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:swagger/api.dart' as api;

class SummaryReportScreen extends StatelessWidget {
  SummaryReportScreen(this._summaryEmployeeReportDto);
  final api.SummaryEmployeeReportDto _summaryEmployeeReportDto;

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
                  style: TextStyle(fontSize: 3.5.rw),
                ),
                Text(
                  'توسعه ارتباطات دینگ',
                  style:
                  TextStyle(fontSize: 3.0.rw, fontWeight: FontWeight.w300),
                ),
                Text(
                  'واحد فروش',
                  style:
                  TextStyle(fontSize: 3.0.rw, fontWeight: FontWeight.w200),
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
            SummaryReportItem('زمان شیفت', _summaryEmployeeReportDto.shiftLength??''),
            SummaryReportItem('زمان کاری', _summaryEmployeeReportDto.totalAttendance??''),
            SummaryReportItem('زمان تاخیر', _summaryEmployeeReportDto.totalDelay??''),
            SummaryReportItem('زمان تعجیل در خروج', _summaryEmployeeReportDto.totalHurry??''),
            SummaryReportItem('زمان غیبت', _summaryEmployeeReportDto.totalAbsence??''),
            SummaryReportItem('زمان اضافه کاری', _summaryEmployeeReportDto.totalOvertime??''),
            SummaryReportItem('زمان ماموریت', _summaryEmployeeReportDto.totalMission??''),
            SummaryReportItem('زمان مرخصی', _summaryEmployeeReportDto.totalLeave??''),
            SummaryReportItem('روز های مرخصی', _summaryEmployeeReportDto.daysOfLeave.toString()),
          ],
        ),
      ));
}
