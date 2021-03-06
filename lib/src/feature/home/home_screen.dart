import 'package:ding/src/feature/departures/departures_screen.dart';
import 'package:ding/src/feature/home/widgets/bottom_nav.dart';
import 'package:ding/src/feature/number_login/number_login_screen.dart';
import 'package:ding/src/feature/other/other_screen.dart';
import 'package:ding/src/feature/report/report_screen.dart';
import 'package:ding/src/feature/requests/requests_screen.dart';
import 'package:ding/src/feature/situation/situation_screen.dart';
import 'package:ding/src/feature/splash/splash_screen.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ding/src/core/logger/logger.dart';
import 'package:swagger/api.dart' as swagger;
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _screenName = 'departures';

  Map<String, Widget> pages = {
    'situation': SituationScreen(),
    'departures': DeparturesScreen(),
    'report': ReportScreen(),
    'requests': RequestsScreen(),
    'other': OtherScreen()
  };

  Map<String, PreferredSize> appBars = {
    'situation': PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        padding: EdgeInsets.only(
            top: SizeConfig.heightMultiplier! >= 7 ? 3.5.rh : 2.2.rh),
        alignment: Alignment.center,
        color: DingColors.primary(),
        height: 13.3.rh,
        child: Text(
          'وضعیت لحظه ای',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 2.73.rt, color: Colors.white),
        ),
      ),
    ),
    'departures': PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
            top: SizeConfig.heightMultiplier! >= 7 ? 3.5.rh : 2.2.rh),
        color: DingColors.primary(),
        height: 13.3.rh,
        child: Text(
          'ورود و خروج',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 2.73.rt, color: Colors.white),
        ),
      ),
    ),
    'report': PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
            top: SizeConfig.heightMultiplier! >= 7 ? 3.5.rh : 2.2.rh),
        color: DingColors.primary(),
        height: 13.3.rh,
        child: Text(
          'گزارش',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 19, color: Colors.white),
        ),
      ),
    ),
    'requests': PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        height: 13.3.rh,
        padding: EdgeInsets.only(
            top: SizeConfig.heightMultiplier! >= 7 ? 3.5.rh : 2.2.rh),
        color: DingColors.primary(),
        child: Row(
          children: [
            Expanded(child: SizedBox()),
            Expanded(
              child: Text(
                'درخواست ها',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 2.73.rt, color: Colors.white),
              ),
            ),
            Expanded(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.8.rw),
                      child: SvgPicture.asset(
                        'assets/images/Shape.svg',
                        width: 4.5.rw,
                      ),
                    ))),
          ],
        ),
      ),
    ),
    'other': PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
            top: SizeConfig.heightMultiplier! >= 7 ? 3.5.rh : 2.2.rh),
        color: DingColors.primary(),
        height: 13.3.rh,
        child: Text(
          'سایر موارد',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 2.73.rt, color: Colors.white),
        ),
      ),
    ),
  };

  void setPage(String page) {
    setState(() {
      _screenName = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
          textDirection: TextDirection.rtl, child: pages[_screenName]!),
      appBar: appBars[_screenName],
      bottomNavigationBar: BottomNav(
        screenName: _screenName,
        change: setPage,
      ),
    );
  }
}
