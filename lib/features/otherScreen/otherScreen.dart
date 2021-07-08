import 'package:ding/features/otherScreen/otherWidgets.dart';
import 'package:flutter/material.dart';

class OtherScreen extends StatefulWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  _OtherScreenState createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10  ),
            child: Column(
              children: [
                optionsTile('ثبت ورود و خروج', Icons.touch_app),
                optionsTile('افزودن کمپانی جدید', Icons.add_box_rounded),
                optionsTile('تنظیمات', Icons.settings),
                optionsTile('درباره ی سامانه دینگ', Icons.info),
              ],
            ),
          ),
        )
      ],
    );
  }
}
