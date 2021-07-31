import 'package:ding/src/feature/departures/bloc/departures_bloc.dart';
import 'package:ding/src/feature/departures/bloc/departures_event.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:ding/src/ui/slide_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  late DeparturesBloc _bloc;

  Widget _mapContainer() => Container(
        color: DingColors.secondary(),
        height: 35.0.rh,
        child: Stack(
          children: [
            _map(),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                width: 19.5.rw,
                height: 16.0.rh,
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                        child: Text(
                      '10:45',
                      style: TextStyle(fontSize: 5.0.rw),
                    )),
                    Text(
                      'دوشنبه',
                      style: TextStyle(fontSize: 5.0.rw - 7),
                    ),
                    Text(
                      '17 مرداد',
                      style: TextStyle(fontSize: 5.0.rw - 7),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '33°C',
                            style: TextStyle(
                                fontSize: 5.0.rw - 5,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          SvgPicture.asset(
                            'assets/images/cloud.svg',
                            width: 6.0.rw,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );

  Widget _map() => Container();

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<DeparturesBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier! * 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _mapContainer(),
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
                _bloc.add(DoDeparturesEvent(true, 1));
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
              height: 8.9.rh,
              txt: 'ورود',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.7.rw),
            child: SlideAction(
              child: SizedBox(),
              reversed: false,
              innerColor: DingColors.primary(),
              outerColor: DingColors.veryLight(),
              sliderButtonIconPadding: 0,
              elevation: 0,
              onCheckFinished: () {
                _bloc.add(DoDeparturesEvent(false, 1));
              },
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
