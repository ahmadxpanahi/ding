import 'package:ding/src/feature/detailed_report/bloc/de_report_bloc.dart';
import 'package:ding/src/feature/detailed_report/bloc/de_report_event.dart';
import 'package:ding/src/feature/detailed_report/bloc/de_report_state.dart';
import 'package:ding/src/feature/detailed_report/widgets/detailed_report_item.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/date_utils.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagger/api.dart' as api;
import 'package:persian_number_utility/persian_number_utility.dart';

class DetailedReportScreen extends StatefulWidget {
  DetailedReportScreen(this.reports, {Key? key}) : super(key: key);

  final List<api.GetDetailedEmployeeReportForViewDto> reports;

  @override
  _DetailedReportContainerState createState() =>
      _DetailedReportContainerState();
}

class _DetailedReportContainerState extends State<DetailedReportScreen> {
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
                      style: TextStyle(
                          fontSize: 3.0.rw, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      'واحد فروش',
                      style: TextStyle(
                          fontSize: 3.0.rw, fontWeight: FontWeight.w200),
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
                      '${DDateUtils.persianDateFromSlashString(widget.reports.first.reportDate ?? "0000/00/00").day.toString().toPersianDigit()} ${DDateUtils.persianDateFromSlashString(widget.reports.first.reportDate ?? "0000/00/00").monthname} ${DDateUtils.persianDateFromSlashString(widget.reports.first.reportDate ?? "0000/00/00").year.toString().toPersianDigit()}',
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
                      '${DDateUtils.persianDateFromSlashString(widget.reports.last.reportDate ?? "0000/00/00").day.toString().toPersianDigit()} ${DDateUtils.persianDateFromSlashString(widget.reports.first.reportDate ?? "0000/00/00").monthname} ${DDateUtils.persianDateFromSlashString(widget.reports.first.reportDate ?? "0000/00/00").year.toString().toPersianDigit()}',
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

  Widget _buildList() => SingleChildScrollView(
        child: Column(
          children: [
            _infoContainer(),
            ...(widget.reports.length < 1
                ? [
                    Expanded(
                      child: Center(
                        child: Text(
                          'هیچ آیتمی برای نمایش وجود ندارد.',
                          style: TextStyle(fontSize: 3.5.rw),
                        ),
                      ),
                    )
                  ]
                : widget.reports.map(
                    (element) => DetailedReportItem(element),
                  ))
          ],
        ),
      );

  Widget _buildBody() => Scaffold(
        backgroundColor: DingColors.veryLight(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
            padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier! >= 7 ? 3.5.rh : 2.2.rh),
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
                  'گزارش تفضیلی',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 2.73.rt, color: Colors.white),
                ),
                Expanded(child: SizedBox())
              ],
            ),
          ),
        ),
        body: _buildList(),
      );

  @override
  Widget build(BuildContext context) => _buildBody();
}
