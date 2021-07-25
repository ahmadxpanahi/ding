import 'package:ding/src/feature/departures/bloc/departures_bloc.dart';
import 'package:ding/src/feature/departures/bloc/departures_event.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/ui/slide_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DevicePage extends StatefulWidget {
  DevicePage({Key? key}) : super(key: key);

  @override
  _DevicePageState createState() => _DevicePageState();
}

class _DevicePageState extends State<DevicePage> {

  Widget _infoContainer() => Container(
        width: 30 * SizeConfig.heightMultiplier!,
        height: 30 * SizeConfig.heightMultiplier!,
        decoration: BoxDecoration(
            color: DingColors.veryLight(), shape: BoxShape.circle),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '10:45',
              style: TextStyle(fontSize: 6.1 * SizeConfig.textMultiplier!),
            ),
            Text(
              'دوشنبه، 17 مرداد',
              style: TextStyle(
                  fontSize: 2.73 * SizeConfig.textMultiplier!,
                  fontWeight: FontWeight.w300),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '33°C',
                  style: TextStyle(
                      fontSize: 2.73 * SizeConfig.textMultiplier!,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 4,
                ),
                SvgPicture.asset(
                  'assets/images/cloud.svg',
                  width: 7 * SizeConfig.widthMultiplier!,
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
                'ورود شما در ساعت 20:05 از طریق دستگاه ثبت شده است.',
                style: TextStyle(
                    fontSize: 3.4 * SizeConfig.widthMultiplier!,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 9.7 * SizeConfig.widthMultiplier!),
            child: SlideAction(
              child: SizedBox(),
              reversed: true,
              onCheckFinished: () {
                _bloc.add(DoDeparturesEvent(true));
              },
              innerColor: DingColors.primary(),
              outerColor: DingColors.veryLight(),
              sliderButtonIconPadding: 0,
              elevation: 0,
              submittedIcon: Icon(
                Icons.check,
                size: 30,
                color: DingColors.primary(),
              ),
              onSubmit: () {},
              height: 8.9 * SizeConfig.heightMultiplier!,
              txt: 'ورود',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 9.7 * SizeConfig.widthMultiplier!),
            child: SlideAction(
              child: SizedBox(),
              reversed: false,
              onCheckFinished: () {
                _bloc.add(DoDeparturesEvent(false));
              },
              innerColor: DingColors.primary(),
              outerColor: DingColors.veryLight(),
              sliderButtonIconPadding: 0,
              elevation: 0,
              submittedIcon: Icon(
                Icons.check,
                size: 30,
                color: DingColors.primary(),
              ),
              onSubmit: () {},
              height: 8.9 * SizeConfig.heightMultiplier!,
              txt: 'خروج',
            ),
          ),
        ],
      ),
    );
  }
}
