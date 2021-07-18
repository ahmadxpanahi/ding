import 'package:ding/ui/colors.dart';
import 'package:ding/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {

  Widget _enter() => Container(
        margin:
            EdgeInsets.symmetric(horizontal: 9.7 * SizeConfig.widthMultiplier!),
        height: 9 * SizeConfig.heightMultiplier!,
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
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 3 * SizeConfig.heightMultiplier!,
                    ),
                    Text(
                      'ورود',
                      style: TextStyle(
                          fontSize: 3.4 * SizeConfig.textMultiplier!,
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
        margin:
            EdgeInsets.symmetric(horizontal: 9.7 * SizeConfig.widthMultiplier!),
        height: 9 * SizeConfig.heightMultiplier!,
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
                          fontSize: 3.4 * SizeConfig.textMultiplier!,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 3 * SizeConfig.heightMultiplier!,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(flex: 2, child: SizedBox()),
          ],
        ),
      );

  Widget _mapContainer() => Container(
        color: DingColors.secondary(),
        height: 35 * SizeConfig.heightMultiplier!,
        child: Stack(
          children: [
            _map(),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                width: 19.5*SizeConfig.widthMultiplier!,
                height: 16*SizeConfig.heightMultiplier!,
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(child: Text('10:45',style: TextStyle(fontSize: 5*SizeConfig.widthMultiplier!),)),
                    Text('دوشنبه',style: TextStyle(fontSize: 5*SizeConfig.widthMultiplier!-7),),
                    Text('17 مرداد',style: TextStyle(fontSize: 5*SizeConfig.widthMultiplier!-7),),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '33°C',
                            style: TextStyle(
                                fontSize: 5*SizeConfig.widthMultiplier!-5,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          SvgPicture.asset('assets/images/cloud.svg',width: 6*SizeConfig.widthMultiplier!,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );

  Widget _map() => Container();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier! * 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _mapContainer(),
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
