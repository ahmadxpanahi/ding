import 'package:ding/ui/colors.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  String? screenName;
  Function(String)? change;
  BottomNav({Key? key, this.change, this.screenName}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(vertical: 3),
        height: 65,
        color: Colors.blueGrey,
        child: SafeArea(
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _bottomNavItem(() {
                  widget.change!('today');
                }, widget.screenName ?? '', 'امروز', Icons.portrait, 'today'),
                _bottomNavItem(() {
                  widget.change!('staff');
                }, widget.screenName ?? '', 'کارکنان', Icons.portrait, 'staff'),
                _bottomNavItem(() {
                  widget.change!('report');
                }, widget.screenName ?? '', 'گزارش', Icons.portrait, 'report'),
                _bottomNavItem(() {
                  widget.change!('advanced');
                }, widget.screenName ?? '', 'پیشرفته', Icons.portrait,
                    'advanced'),
                _bottomNavItem(() {
                  widget.change!('other');
                }, widget.screenName ?? '', 'سایر', Icons.portrait, 'other'),
              ],
            ),
          ),
        ),
      );
}

Widget _bottomNavItem(Function tap, String screenName, String title,
        IconData icon, String checkTitle) =>
    Expanded(
      child: GestureDetector(
        onTap: () {
          tap();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Icon(
                icon,
                size: 40,
                color: screenName == checkTitle
                    ? DingColors.primary()
                    : Colors.black38,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 15,
                  color: screenName == checkTitle
                      ? DingColors.primary()
                      : Colors.black38),
            )
          ],
        ),
      ),
    );
