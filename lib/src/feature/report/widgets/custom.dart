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

class CustomPage extends StatefulWidget {
  const CustomPage({Key? key}) : super(key: key);

  @override
  _CustomPageState createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
  PersianDate? begin;
  PersianDate? end;
  late ReportBloc _reportBloc;

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
              width: SizeConfig.heightMultiplier! < 6 ? 6.0.rw : 7.0.rw,
            ))
      ],
    ),
  );

  _datePickers(context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DDatePicker(
            title: 'شروع',
            daily: true,
            type: 'begin',
            onChangeDate: (dateTime){
              begin = dateTime;
            },
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier!,
          ),
          DDatePicker(
            title: 'پایان',
            daily: true,
            type: 'begin',
            onChangeDate: (dateTime){
              end = dateTime;
            },
          )
        ],
      );

  _bottomButtons() => BlocBuilder(
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
                  if (begin != null || end != null)
                    _reportBloc.add(GetDetailedReports(begin!,end!));
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
                  if (begin != null || end != null)
                    _reportBloc.add(GetSummaryReports(begin!,end!));
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

  @override
  void initState() {
    super.initState();
    _reportBloc = BlocProvider.of<ReportBloc>(context);
  }

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
