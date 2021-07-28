import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';import 'package:ding/src/utils/extensions.dart';
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
        height: SizeConfig.heightMultiplier! > 7.5 ? 11.0.rh : 8.2.rh,
        color: DingColors.dark(),
        child: SafeArea(
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _bottomNavItem(() {
                  widget.change!('other');
                }, widget.screenName ?? '', 'assets/images/other.svg', 'other',
                    SizeConfig.heightMultiplier!),
                _bottomNavItem(() {
                  widget.change!('report');
                }, widget.screenName ?? '', 'assets/images/form.svg', 'report',
                    4.1.rh),
                _bottomNavItem(() {
                  widget.change!('departures');
                }, widget.screenName ?? '', 'assets/images/timer.svg',
                    'departures', 4.5.rh),
                _bottomNavItem(() {
                  widget.change!('requests');
                }, widget.screenName ?? '', 'assets/images/letter.svg',
                    'requests', 4.1.rh),
                _bottomNavItem(() {
                  widget.change!('situation');
                }, widget.screenName ?? '', 'assets/images/eye.svg',
                    'situation', 7.0.rh),

              ],
            ),
          ),
        ),
      );
}

Widget _bottomNavItem(Function tap, String screenName, String svgUrl,
        String checkTitle, double size) =>
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
                width: size,
                height: size,
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
