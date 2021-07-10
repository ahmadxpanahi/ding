import 'package:ding/ui/colors.dart';
import 'package:flutter/material.dart';

Widget bottomNavItem(Function tap,String screenName,String title,IconData icon,String checkTitle) => Expanded(
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
