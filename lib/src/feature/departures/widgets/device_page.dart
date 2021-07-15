import 'package:ding/ui/colors.dart';
import 'package:ding/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DevicePage extends StatefulWidget {
  const DevicePage({Key? key}) : super(key: key);

  @override
  _DevicePageState createState() => _DevicePageState();
}

class _DevicePageState extends State<DevicePage> {

  Widget _infoContainer() => Container(
        width: 30 * SizeConfig.heightMultiplier!,
        height: 30 * SizeConfig.heightMultiplier!,
        decoration: BoxDecoration(
            color: DingColors.veryLight(), shape: BoxShape.circle),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '10:45',
              style: TextStyle(fontSize: 6.1 * SizeConfig.textMultiplier!),
            ),
            Text(
              'دوشنبه، 17 مرداد',
              style: TextStyle(
                  fontSize: 2.73 * SizeConfig.textMultiplier!,
                  fontWeight: FontWeight.w300),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '33°C',
                  style: TextStyle(
                      fontSize: 2.73 * SizeConfig.textMultiplier!,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 4,
                ),
                SvgPicture.asset('assets/images/cloud.svg'),
              ],
            )
          ],
        ),
      );

  Widget _enter() => Container(
        margin: EdgeInsets.symmetric(horizontal: 9.7*SizeConfig.widthMultiplier!),
        height: 9.5 * SizeConfig.heightMultiplier!,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: DingColors.veryLight()),
        child: Row(
          children: [
            Expanded(flex: 2, child: SizedBox()),
            Expanded(
              flex: 1,
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: DingColors.primary(),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back_ios,color: Colors.white,size: 3*SizeConfig.heightMultiplier!,),
                    Text(
                      'ورود',
                      style: TextStyle(
                          fontSize: 3.4*SizeConfig.textMultiplier!,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  Widget _exit() => Container(
        margin: EdgeInsets.symmetric(horizontal: 9.7*SizeConfig.widthMultiplier!),
        height: 9.5 * SizeConfig.heightMultiplier!,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: DingColors.veryLight()),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: DingColors.primary(),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'خروج',
                      style: TextStyle(
                          fontSize: 3.4*SizeConfig.textMultiplier!,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,size: 3*SizeConfig.heightMultiplier!,),
                  ],
                ),
              ),
            ),
            Expanded(flex: 2, child: SizedBox()),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier!*2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _infoContainer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check,
                size: 25,
                color: DingColors.primary(),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                'ورود شما در ساعت 20:05 از طریق دستگاه ثبت شده است.',
                style: TextStyle(
                    fontSize: 3.4 * SizeConfig.widthMultiplier!,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          _enter(),
          _exit()
        ],
      ),
    );
  }
}
