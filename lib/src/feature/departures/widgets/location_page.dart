import 'package:ding/ui/colors.dart';
import 'package:ding/ui/size_config.dart';
import 'package:ding/ui/slide_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {

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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.7*SizeConfig.widthMultiplier!),
            child: SlideAction(
              child: SizedBox(),
              reversed: true,
              innerColor: DingColors.primary(),
              outerColor: DingColors.veryLight(),
              sliderButtonIconPadding: 0,
              elevation: 0,
              submittedIcon: Icon(Icons.check,size: 30,color: DingColors.primary(),),
              onSubmit: (){},
              height: 8.9 * SizeConfig.heightMultiplier!,
              txt: 'ورود',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.7*SizeConfig.widthMultiplier!),
            child: SlideAction(
              child: SizedBox(),
              reversed: false,
              innerColor: DingColors.primary(),
              outerColor: DingColors.veryLight(),
              sliderButtonIconPadding: 0,
              elevation: 0,
              submittedIcon: Icon(Icons.check,size: 30,color: DingColors.primary(),),
              onSubmit: (){},
              height: 8.9 * SizeConfig.heightMultiplier!,
              txt: 'خروج',
            ),
          ),
        ],
      ),
    );
  }
}
