import 'package:ding/src/feature/other/widgets/options_tile.dart';
import 'package:ding/ui/colors.dart';
import 'package:flutter/material.dart';

class OtherScreen extends StatefulWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  _OtherScreenState createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {

  Widget _infoItem(String title,IconData icon) => Container(
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

                OptionsTile(icon: Icons.touch_app,title: 'ثبت ورود و خروج',),
                OptionsTile(icon: Icons.add_box_rounded,title: 'افزودن کمپانی جدید',),
                OptionsTile(icon: Icons.settings,title: 'تنظیمات',),
                OptionsTile(icon: Icons.info,title: 'درباره ی سامانه دینگ',),

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
                  _infoItem('پشتیبانی سامانه',Icons.network_check_outlined),
                  _infoItem('وبسایت دینگ',Icons.center_focus_weak),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _infoItem('کانال تلگرام',Icons.call),
                  _infoItem('اینستاگرام',Icons.camera),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
