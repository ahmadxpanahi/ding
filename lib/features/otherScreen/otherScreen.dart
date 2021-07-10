import 'package:ding/features/otherScreen/otherWidgets.dart';
import 'package:ding/ui/colors.dart';
import 'package:flutter/material.dart';

class OtherScreen extends StatefulWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  _OtherScreenState createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {

  Widget infoItem(String title,IconData icon) => Container(
    margin: EdgeInsets.only(right: 10,left: 10,bottom: 12,top: 5),
    height: 90 ,
    width: 150,
    decoration: BoxDecoration(
      border: Border.all(width: 3,color: DingColors.primary())
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 35,color: DingColors.primary(),),
        Text(title,style: TextStyle(color: DingColors.primary(),fontSize: 20,fontWeight: FontWeight.bold),)
      ],
    ),
  );

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
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  infoItem('پشتیبانی سامانه',Icons.network_check_outlined),
                  infoItem('وبسایت دینگ',Icons.center_focus_weak),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  infoItem('کانال تلگرام',Icons.call),
                  infoItem('اینستاگرام',Icons.camera),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
