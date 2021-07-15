import 'package:ding/src/feature/advanced/advanced_screen.dart';
import 'package:ding/src/feature/departures/departures_screen.dart';
import 'package:ding/src/feature/home/widgets/bottom_nav.dart';
import 'package:ding/src/feature/number_login/number_login_screen.dart';
import 'package:ding/src/feature/other/other_screen.dart';
import 'package:ding/src/feature/other/widgets/drop_down.dart';
import 'package:ding/src/feature/report/report_screen.dart';
import 'package:ding/src/feature/requests/requests_screen.dart';
import 'package:ding/src/feature/situation/situation_screen.dart';
import 'package:ding/ui/colors.dart';
import 'package:ding/ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        padding: EdgeInsets.only(top: 2.2*SizeConfig.heightMultiplier!),
        alignment: Alignment.center,
        color: DingColors.primary(),
        height: 13.3*SizeConfig.heightMultiplier!,
        child: Text(
          'وضعیت لحظه ای',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 2.73*SizeConfig.textMultiplier!, color: Colors.white),
        ),
      ),
    ),
    'departures': PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 2.2*SizeConfig.heightMultiplier!),
        color: DingColors.primary(),
        height: 13.3*SizeConfig.heightMultiplier!,
        child: Text(
          'ورود و خروج',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 2.73*SizeConfig.textMultiplier!, color: Colors.white),
        ),
      ),
    ),
    'report': PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 15),
        color: DingColors.primary(),
        height: 90,
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
        height: 13.3*SizeConfig.heightMultiplier!,
        padding: EdgeInsets.only(top: 2.2*SizeConfig.heightMultiplier!),
        color: DingColors.primary(),
        child: Row(
          children: [
            Expanded(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.8*SizeConfig.widthMultiplier!),
                      child: SvgPicture.asset('assets/images/Shape.svg'),
                    ))),
            Expanded(
              child: Text(
                'درخواست ها',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 2.73*SizeConfig.textMultiplier!, color: Colors.white),
              ),
            ),
            Expanded(child: SizedBox())
          ],
        ),
      ),
    ),
    'other': PreferredSize(
      preferredSize: Size.fromHeight(220),
      child: Container(
          padding: EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 15),
          color: DingColors.primary(),
          height: 160,
          child: Column(
            children: [
              Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ding',
                    style: TextStyle(fontSize: 55, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.power_settings_new,
                      size: 37,
                      color: Colors.white,
                    ),
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_drop_down_rounded,
                            size: 40,
                            color: Colors.white,
                          ),
                          OtherDropdown(),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
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
