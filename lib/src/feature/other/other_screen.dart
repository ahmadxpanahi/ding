import 'package:ding/src/feature/other/widgets/options_tile.dart';
import 'package:ding/src/feature/setting/setting_screen.dart';
import 'package:ding/ui/colors.dart';
import 'package:ding/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OtherScreen extends StatefulWidget {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  _OtherScreenState createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
  Widget _profileContainer() => Expanded(
      flex: 3,
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Container(
                  width: 13.5 * SizeConfig.heightMultiplier!,
                  height: 13.5 * SizeConfig.heightMultiplier!,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: DingColors.light(),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn1.iconfinder.com/data/icons/avatar-97/32/avatar-02-512.png'),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  width: 3.6 * SizeConfig.widthMultiplier!,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'پژمان شفیعی',
                      style: TextStyle(
                          fontSize: 2.7 * SizeConfig.textMultiplier!,
                          fontWeight: FontWeight.bold,
                          color: DingColors.dark()),
                    ),
                    Text(
                      'توسعه ارتباطات دینگ',
                      style: TextStyle(
                          fontSize: 2.7 * SizeConfig.textMultiplier! - 5,
                          fontWeight: FontWeight.w300,
                          color: DingColors.dark()),
                    ),
                    Text(
                      'واحد فروش',
                      style: TextStyle(
                          fontSize: 2.7 * SizeConfig.textMultiplier! - 5,
                          fontWeight: FontWeight.w200,
                          color: DingColors.dark()),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/edit.svg',
                width: 7.3 * SizeConfig.widthMultiplier!,
              ),
            )
          ],
        ),
      ));

  Widget _item(String txt, String imgUrl) => Row(
        children: [
          SizedBox(
            width: 7 * SizeConfig.widthMultiplier!,
          ),
          SvgPicture.asset(
            imgUrl,
            width: 5.4 * SizeConfig.heightMultiplier!,
          ),
          SizedBox(
            width: 6 * SizeConfig.widthMultiplier!,
          ),
          Text(
            txt,
            style: TextStyle(
                fontSize: 2.7 * SizeConfig.textMultiplier! - 5,
                fontWeight: FontWeight.w300,
                color: DingColors.dark()),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: DingColors.veryLight(),
      child: Column(
        children: [
          SizedBox(
            height: 6,
          ),
          _profileContainer(),
          SizedBox(
            height: 6,
          ),
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _item('مدیریت حساب', 'assets/images/manage-icon.svg'),
                    _item('تنظیمات', 'assets/images/setting.svg'),
                    _item('پشتیبانی', 'assets/images/support.svg'),
                    _item('درباره دینگ', 'assets/images/info.svg'),
                  ],
                ),
              )),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier! * 10,
                  vertical: SizeConfig.heightMultiplier! * 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(
                        'assets/images/web.svg',
                        width: 5 * SizeConfig.heightMultiplier!,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'وب سایت',
                        style: TextStyle(
                            fontSize: 2.7 * SizeConfig.textMultiplier! - 5,
                            fontWeight: FontWeight.w200,
                            color: DingColors.dark()),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(
                        'assets/images/telegram.svg',
                        width: 5 * SizeConfig.heightMultiplier!,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'تلگرام',
                        style: TextStyle(
                            fontSize: 2.7 * SizeConfig.textMultiplier! - 5,
                            fontWeight: FontWeight.w200,
                            color: DingColors.dark()),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Transform.scale(
                        child: SvgPicture.asset(
                          'assets/images/instagram.svg',
                          width: 5 * SizeConfig.heightMultiplier!,
                        ),
                        scale: 1.4,
                      ),
                      SizedBox(height: 3,),
                      Text(
                        'اینستاگرام',
                        style: TextStyle(
                            fontSize: 2.7 * SizeConfig.textMultiplier! - 5,
                            fontWeight: FontWeight.w200,
                            color: DingColors.dark()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
