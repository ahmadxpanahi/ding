import 'package:ding/src/feature/advanced/advanced_screen.dart';
import 'package:ding/src/feature/home/widgets/bottom_nav.dart';
import 'package:ding/src/feature/other/other_screen.dart';
import 'package:ding/src/feature/other/widgets/drop_down.dart';
import 'package:ding/src/feature/report/report_screen.dart';
import 'package:ding/src/feature/staff/staff_screen.dart';
import 'package:ding/src/feature/today/today_screen.dart';
import 'package:ding/ui/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _screenName = 'other';

  Map<String, Widget> pages = {
    'today': TodayScreen(),
    'advanced': AdvancedScreen(),
    'report': ReportScreen(),
    'staff': StaffScreen(),
    'other': OtherScreen()
  };

  Map<String, PreferredSize> appBars = {
    'today': PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        padding: EdgeInsets.only(top: 15),
        color: DingColors.primary(),
        height: 90,
        child: Row(
          children: [
            Expanded(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.refresh,
                          size: 40,
                          color: Colors.white,
                        )))),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'وضعیت لحظه ای',
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  Text(
                    'توسعه فناوری دینگ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox())
          ],
        ),
      ),
    ),
    'advanced': PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        padding: EdgeInsets.only(top: 15),
        color: DingColors.primary(),
        height: 90,
        child: Row(
          children: [
            Expanded(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.refresh,
                          size: 40,
                          color: Colors.white,
                        )))),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'وضعیت لحظه ای',
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  Text(
                    'توسعه فناوری دینگ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox())
          ],
        ),
      ),
    ),
    'report': PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        padding: EdgeInsets.only(top: 15),
        color: DingColors.primary(),
        height: 90,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'گزارش گیری',
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  Text(
                    'توسعه فناوری دینگ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    'staff': PreferredSize(
      preferredSize: Size.fromHeight(220),
      child: Container(
        height: 90,
        padding: EdgeInsets.only(top: 15),
        color: DingColors.primary(),
        child: Row(
          children: [
            Expanded(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.refresh,
                          size: 40,
                          color: Colors.white,
                        )))),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'کارکنان',
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  Text(
                    'توسعه فناوری دینگ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
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
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: Directionality(
          textDirection: TextDirection.rtl, child: pages[_screenName]!),
      appBar: appBars[_screenName],
      floatingActionButton: _screenName == 'staff'
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.add,
                size: 40,
              ),
              backgroundColor: DingColors.primary(),
            )
          : null,
      bottomNavigationBar: BottomNav(
        screenName: _screenName,
        change: setPage,
      ),
    );
  }
}
