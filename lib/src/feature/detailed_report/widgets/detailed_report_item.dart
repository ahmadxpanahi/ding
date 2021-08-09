import 'package:ding/src/feature/report/bloc/report_bloc.dart';
import 'package:ding/src/feature/requests/bloc/requests_bloc.dart';
import 'package:ding/src/feature/summary_report/summary_report_screen.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/date_utils.dart';
import 'package:flutter/material.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:swagger/api.dart' as api;

class DetailedReportItem extends StatelessWidget {
  DetailedReportItem(this.report, {Key? key}) : super(key: key);
  api.GetDetailedEmployeeReportForViewDto report;

  @override
  Widget build(BuildContext context) {
    late ReportBloc _reportBloc = BlocProvider.of<ReportBloc>(context);
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SummaryReportScreen(report.employeeReport!)));
      },
      child: Container(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier! * 4.5),
          margin: EdgeInsets.only(top: SizeConfig.heightMultiplier!),
          height: 14.7.rh,
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${DDateUtils.persianDateFromSlashString(report.reportDate ?? "0000/00/00").weekdayname} ,${DDateUtils.persianDateFromSlashString(report.reportDate ?? "0000/00/00").day!.timePadded.toString().toPersianDigit()} ',
                      style: TextStyle(
                          fontSize: 2.8.rt + 1, color: DingColors.dark()),
                    ),
                    Text(
                      '${DDateUtils.persianDateFromSlashString(report.reportDate ?? "0000/00/00").monthname} ${DDateUtils.persianDateFromSlashString(report.reportDate ?? "0000/00/00").year.toString().toPersianDigit()}',
                      style: TextStyle(fontSize: 2.3.rt + 1, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'جمع :',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier! * 2,
                  ),
                  Text(
                    report.employeeReport?.totalOvertime ?? '',
                    style: TextStyle(fontSize: 15, color: DingColors.primary()),
                  ),
                ],
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier! * 5,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 3.0.rh,
              )
            ],
          )),
    );
  }
}
