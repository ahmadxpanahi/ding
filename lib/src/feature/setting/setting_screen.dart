import 'package:ding/src/feature/setting/bloc/setting_bloc.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingBLoc(),
      child: SettingContainer(),
    );
  }
}

class SettingContainer extends StatefulWidget {
  const SettingContainer({Key? key}) : super(key: key);

  @override
  _SettingContainerState createState() => _SettingContainerState();
}

class _SettingContainerState extends State<SettingContainer> {
  bool val1 = false;
  bool val2 = false;
  @override
  Widget build(BuildContext context) => Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: DingColors.veryLight(),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              padding: EdgeInsets.only(top: 2.2.rh),
              alignment: Alignment.center,
              color: DingColors.primary(),
              height: 13.3.rh,
              child: Row(
                children: [
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 2.4.rw),
                      child: IconButton(
                        color: Colors.white,
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 3.0.rh,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  )),
                  Text(
                    'تنظیمات',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 2.73.rt, color: Colors.white),
                  ),
                  Expanded(child: SizedBox())
                ],
              ),
            ),
          ),
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                height: 155,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'دریافت نوتیفیکیشن',
                          style:
                              TextStyle(fontSize: 17, color: DingColors.dark()),
                        ),
                        Switch(
                            activeColor: DingColors.primary(),
                            inactiveThumbColor: DingColors.light(),
                            activeTrackColor:
                                DingColors.primary().withOpacity(0.5),
                            value: val1,
                            onChanged: (val) {
                              setState(() {
                                val1 = val;
                              });
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'هشدار ورود/خروج',
                          style:
                              TextStyle(fontSize: 17, color: DingColors.dark()),
                        ),
                        Switch(
                            activeColor: DingColors.primary(),
                            inactiveThumbColor: DingColors.light(),
                            activeTrackColor:
                                DingColors.primary().withOpacity(0.5),
                            value: val2,
                            onChanged: (val) {
                              setState(() {
                                val2 = val;
                              });
                            })
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'نسخه 1.0.0',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              )
            ],
          ),
        ),
      );
}
