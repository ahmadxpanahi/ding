import 'package:ding/src/feature/departures/bloc/departures_bloc.dart';
import 'package:ding/src/feature/departures/bloc/departures_event.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:ding/src/ui/slide_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:jalali_calendar/jalali_calendar.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class DevicePage extends StatefulWidget {
  DevicePage({Key? key}) : super(key: key);

  @override
  _DevicePageState createState() => _DevicePageState();
}

class _DevicePageState extends State<DevicePage> {
  String timeNow =
      '${PersianDate().hour.toString().toPersianDigit()}:${PersianDate().minute.toString().toPersianDigit()}';

  Widget _infoContainer() => Container(
        width: 30.0.rh,
        height: 30.0.rh,
        decoration: BoxDecoration(
            color: DingColors.veryLight(), shape: BoxShape.circle),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TimerBuilder.periodic(Duration(seconds: 5), builder: (_) {
              return Text(
                '${PersianDate().hour.toString().toPersianDigit()}:${PersianDate().minute.toString().toPersianDigit()}',
                style: TextStyle(fontSize: 6.1.rt),
              );
            }),
            Text(
              '${PersianDate().weekdayname} ${PersianDate().day.toString().toPersianDigit()} ${PersianDate().monthname}',
              style: TextStyle(fontSize: 2.73.rt, fontWeight: FontWeight.w300),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${'33'.toPersianDigit()}°C',
                  style:
                      TextStyle(fontSize: 2.73.rt, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 4,
                ),
                SvgPicture.asset(
                  'assets/images/cloud.svg',
                  width: 7.0.rw,
                ),
              ],
            )
          ],
        ),
      );
  late DeparturesBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<DeparturesBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: SizeConfig.heightMultiplier! * 2,
          top: SizeConfig.heightMultiplier! * 3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _infoContainer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check,
                size: 25,
                color: DingColors.primary(),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                'ورود شما در ساعت ${timeNow} از طریق دستگاه ثبت شده است.',
                style: TextStyle(fontSize: 3.4.rw, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.7.rw),
            child: SlideAction(
              child: SizedBox(),
              reversed: true,
              onCheckFinished: () {
                _bloc.add(DoDeparturesEvent(true, 0));
              },
              innerColor: DingColors.primary(),
              outerColor: DingColors.veryLight(),
              sliderButtonIconPadding: 0,
              sliderButtonIconSize: 4.5.rw,
              elevation: 0,
              submittedIcon: Icon(
                Icons.check,
                size: 30,
                color: DingColors.primary(),
              ),
              onSubmit: () {},
              height: 8.9.rh,
              txt: 'ورود',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.7.rw),
            child: SlideAction(
              child: SizedBox(),
              reversed: false,
              onCheckFinished: () {
                _bloc.add(DoDeparturesEvent(false, 0));
              },
              innerColor: DingColors.primary(),
              outerColor: DingColors.veryLight(),
              sliderButtonIconPadding: 0,
              sliderButtonIconSize: 4.5.rw,
              elevation: 0,
              submittedIcon: Icon(
                Icons.check,
                size: 30,
                color: DingColors.primary(),
              ),
              onSubmit: () {},
              height: 8.9.rh,
              txt: 'خروج',
            ),
          ),
        ],
      ),
    );
  }
}
