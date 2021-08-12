import 'package:another_flushbar/flushbar.dart';
import 'package:ding/src/feature/create_request/widgets/date_picker.dart';
import 'package:ding/src/feature/report/bloc/report_bloc.dart';
import 'package:ding/src/feature/report/bloc/report_event.dart';
import 'package:ding/src/feature/report/bloc/report_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jalali_calendar/jalali_calendar.dart';

class MonthlyReportPage extends StatefulWidget {
  const MonthlyReportPage({Key? key}) : super(key: key);

  @override
  _MonthlyReportPageState createState() => _MonthlyReportPageState();
}

class _MonthlyReportPageState extends State<MonthlyReportPage> {
  late ReportBloc _reportBloc;

  DateTime? period;
  PersianDate? date;

  @override
  void initState() {
    super.initState();

    _reportBloc = BlocProvider.of<ReportBloc>(context);
    _reportBloc.add(GetUserProfile());
  }

  _buildAvatar() => BlocBuilder<ReportBloc, ReportState>(
        bloc: _reportBloc,
        buildWhen: (o, n) => n is ReportProfileLoaded,
        builder: (_, state) {
          if (state is ReportProfileLoaded && state.imageBinary != null) {
            return Container(
              width: 8.0.rh,
              height: 8.0.rh,
              decoration: BoxDecoration(
                color: DingColors.light(),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: MemoryImage(state.imageBinary!), fit: BoxFit.fill),
              ),
            );
          }

          return Container(
            width: 8.0.rh,
            height: 8.0.rh,
            decoration: BoxDecoration(
              color: DingColors.light(),
              shape: BoxShape.circle,
            ),
          );
        },
      );

  get _profileRowWidget => BlocBuilder<ReportBloc, ReportState>(
        bloc: _reportBloc,
        buildWhen: (o, n) => n is ReportProfileLoaded,
        builder: (_, state) {
          if (state is ReportProfileLoaded) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _getProfileName(state),
                  style: TextStyle(fontSize: 2 * SizeConfig.textMultiplier!),
                ),
                Text(
                  'ادمین',
                  style: TextStyle(
                      fontSize: 2 * SizeConfig.textMultiplier! - 2,
                      fontWeight: FontWeight.w300),
                ),
              ],
            );
          }

          return SizedBox();
        },
      );

  String _getProfileName(ReportProfileLoaded state) =>
      state.userProfileName.length > 0 ? state.userProfileName : "--";

  _infoContainer() => Container(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier! * 4.5),
        height: 15.0.rh,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                _buildAvatar(),
                SizedBox(
                  width: 10,
                ),
                _profileRowWidget,
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/list.svg',
                  width: SizeConfig.heightMultiplier! < 6 ? 6.0.rw : 7.0.rw,
                ))
          ],
        ),
      );

  _datePickers(context) => DDatePicker(
        title: 'دوره',
        daily: true,
        type: 'begin',
        onChangeDate: (dateTime) {
          date = dateTime;
        },
      );

  _bottomButtons() => BlocBuilder<ReportBloc, ReportState>(
        bloc: _reportBloc,
        builder: (_, state) {
          if (state is ReportLoadingState) {
            return Center(
              child: Transform.scale(
                  scale: SizeConfig.heightMultiplier! < 6 ? 0.6 : 1,
                  child: CircularProgressIndicator(
                    color: DingColors.primary(),
                  )),
            );
          } else {
            return Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (date != null)
                        _reportBloc.add(GetDetailedReports(date!, date!));
                      else {
                        Future.delayed(Duration.zero, () async {
                          await Flushbar(
                            backgroundColor: DingColors.warning(),
                            duration: Duration(seconds: 2),
                            borderRadius: BorderRadius.circular(100),
                            padding: EdgeInsets.all(15),
                            message: 'ابتدا فیلد خواسته شده را تکمیل کنید.',
                            flushbarPosition: FlushbarPosition.TOP,
                          ).show(context);
                        });
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          bottom: SizeConfig.heightMultiplier! * 5),
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
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier! * 3,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (date != null)
                        _reportBloc.add(GetSummaryReports(date!, date!));
                      else {
                        Future.delayed(Duration.zero, () async {
                          await Flushbar(
                            backgroundColor: DingColors.warning(),
                            duration: Duration(seconds: 2),
                            borderRadius: BorderRadius.circular(100),
                            padding: EdgeInsets.all(15),
                            message: 'ابتدا فیلد خواسته شده را تکمیل کنید.',
                            flushbarPosition: FlushbarPosition.TOP,
                          ).show(context);
                        });
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          bottom: SizeConfig.heightMultiplier! * 5),
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
                ),
              ],
            );
          }
        },
      );

  Widget _buildBody() => Container(
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
                  _bottomButtons(),
                  SizedBox(
                    height: 2.5.rh,
                  )
                ],
              ),
            ),
          )
        ],
      ));

  @override
  Widget build(BuildContext context) => _buildBody();
}
