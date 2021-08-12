import 'package:ding/src/feature/departures/bloc/departures_bloc.dart';
import 'package:ding/src/feature/departures/bloc/departures_event.dart';
import 'package:ding/src/feature/departures/bloc/departures_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:ding/src/ui/slide_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jalali_calendar/jalali_calendar.dart';
import 'package:location/location.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  late DeparturesBloc _bloc;
  MapController? _mapController = MapController();
  var currentLocation = Location().getLocation();
  LatLng? _centerLocation;
  LatLng _myLocation = LatLng(32.852971, 59.242443);
  String timeNow =
      '${PersianDate().hour.toString().toPersianDigit()}:${PersianDate().minute.toString().toPersianDigit()}';

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<DeparturesBloc>(context);
    _bloc.add(GetEnterOrLeaveTime());
    Future.delayed(Duration(milliseconds: 1500), () {
      _centerLocation = _mapController?.center;
    });
  }

  Widget _buildStatusText() => BlocBuilder(
        bloc: _bloc,
        builder: (_, state) {
          if (state is GetEnterOrLeaveTimeSuccessful) {
            String txt;
            DateTime? date = state.userClock?.userClockInOut?.clock;

            if (date != null) {
              if (state.userClock!.userClockInOut!.abnormalityType?.value ==
                  1) {
                txt = 'ورود';
              } else {
                txt = 'خروج';
              }

              return Row(
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
                    '$txt شما در ساعت ${'${date.hour.timePadded}:${date.minute.timePadded}'} از طریق دستگاه ثبت شده است.',
                    style: TextStyle(
                        fontSize: 3.4.rw, fontWeight: FontWeight.w400),
                  )
                ],
              );
            } else {
              return Text(
                'ورود و خروجی برای شما ثبت نشده است',
                style: TextStyle(fontSize: 3.4.rw, fontWeight: FontWeight.w400),
              );
            }
          } else
            return SizedBox();
        },
      );

  Widget _mapContainer() => Container(
        color: DingColors.secondary(),
        height: 35.0.rh,
        child: Stack(
          children: [
            _map(),
            Positioned(
              bottom: 10,
              left: 10,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 19.5.rw,
                  height: 16.0.rh,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Expanded(
                        child: TimerBuilder.periodic(Duration(seconds: 5),
                            builder: (_) {
                          return Text(
                            '${PersianDate().hour.toString().toPersianDigit()}:${PersianDate().minute.toString().toPersianDigit()}',
                            style: TextStyle(
                                fontSize: 5.0.rw, fontWeight: FontWeight.w300),
                          );
                        }),
                      ),
                      Text(
                        '${PersianDate().weekdayname}',
                        style: TextStyle(fontSize: 5.0.rw - 7),
                      ),
                      Text(
                        '${PersianDate().day.toString().toPersianDigit()} ${PersianDate().monthname}',
                        style: TextStyle(fontSize: 5.0.rw - 7),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${'33'.toPersianDigit()}°C',
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
              ),
            ),
            Positioned(
              bottom: 10,
              right: 15,
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      print(currentLocation);
                      currentLocation.then((value) {
                        double? long = value.longitude;
                        double? lat = value.latitude;
                        _myLocation = LatLng(lat!, long!);
                      });
                    });
                  },
                  child: SvgPicture.asset(
                    'assets/images/mylocation.svg',
                    width: 7.5.rw,
                  )),
            ),
            Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/images/pin.svg',
                  width: 8.0.rw,
                ))
          ],
        ),
      );

  Widget _map() => FlutterMap(
        mapController: _mapController,
        options: MapOptions(
            center: _myLocation,
            zoom: 13.0,
            onPositionChanged: (position, _) {
              _centerLocation = position.center;
            }),
        layers: [
          TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c']),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier! * 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _mapContainer(),
          _buildStatusText(),
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
              sliderButtonIconSize: 4.5.rw,
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
              sliderButtonIconSize: 4.5.rw,
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
