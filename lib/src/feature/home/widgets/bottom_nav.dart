import 'package:ding/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        height: 60,
        color: DingColors.dark(),
        child: SafeArea(
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _bottomNavItem(() {
                  widget.change!('situation');
                }, widget.screenName ?? '', 'assets/images/eye.svg', 'situation'),
                _bottomNavItem(() {
                  widget.change!('requests');
                }, widget.screenName ?? '', 'assets/images/letter.svg', 'requests'),
                _bottomNavItem(() {
                  widget.change!('advanced');
                }, widget.screenName ?? '', 'assets/images/timer.svg', 'advanced'),
                _bottomNavItem(() {
                  widget.change!('report');
                }, widget.screenName ?? '', 'assets/images/form.svg', 'report'),
                _bottomNavItem(() {
                  widget.change!('other');
                }, widget.screenName ?? '', 'assets/images/other.svg', 'other'),
              ],
            ),
          ),
        ),
      );
}

Widget _bottomNavItem(
        Function tap, String screenName, String svgUrl, String checkTitle) =>
    Expanded(
      child: GestureDetector(
        onTap: () {
          tap();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: SvgPicture.asset(
                svgUrl,
                color: screenName == checkTitle
                    ? DingColors.primary()
                    : DingColors.light(),
              ),
            ),
            if (screenName == checkTitle)
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: DingColors.primary()),
              )
          ],
        ),
      ),
    );
