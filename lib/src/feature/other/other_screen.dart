import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/feature/account_management/account_management_screen.dart';
import 'package:ding/src/feature/number_login/number_login_screen.dart';
import 'package:ding/src/feature/other/widgets/options_tile.dart';
import 'package:ding/src/feature/setting/setting_screen.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
                  width: 20.0.rw,
                  height: 20.0.rw,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: DingColors.light(),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn1.iconfinder.com/data/icons/avatar-97/32/avatar-02-512.png'),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  width: 3.6.rw,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'پژمان شفیعی',
                      style: TextStyle(
                          fontSize: 5.0.rw,
                          fontWeight: FontWeight.bold,
                          color: DingColors.dark()),
                    ),
                    Text(
                      'توسعه ارتباطات دینگ',
                      style: TextStyle(
                          fontSize: 5.0.rw - 5,
                          fontWeight: FontWeight.w300,
                          color: DingColors.dark()),
                    ),
                    Text(
                      'واحد فروش',
                      style: TextStyle(
                          fontSize: 5.0.rw - 5,
                          fontWeight: FontWeight.w200,
                          color: DingColors.dark()),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                Future.delayed(Duration(seconds: 0), () async {
                  SharedPreferences sp = await SharedPreferences.getInstance();
                  var _tokenManager = TokenManager(sp);
                  _tokenManager.removeAccessToken();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NumberLoginScreen()));
                });
              },
              icon: SvgPicture.asset(
                'assets/images/edit.svg',
                width: 7.3.rw,
              ),
            )
          ],
        ),
      ));

  Widget _item(String txt, String imgUrl) => Row(
        children: [
          SizedBox(
            width: 7.0.rw,
          ),
          SvgPicture.asset(
            imgUrl,
            width: 8.0.rw,
          ),
          SizedBox(
            width: 6.0.rw,
          ),
          Text(
            txt,
            style: TextStyle(
                fontSize: 2.7.rt - 5,
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
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AccountManagementScreen()));
                        },
                        child: _item(
                            'مدیریت حساب', 'assets/images/manage-icon.svg')),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingScreen()));
                        },
                        child: _item('تنظیمات', 'assets/images/setting.svg')),
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
                        width: 8.0.rw,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'وب سایت',
                        style: TextStyle(
                            fontSize: 2.7.rt - 5,
                            fontWeight: FontWeight.w200,
                            color: DingColors.dark()),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(
                        'assets/images/telegram.svg',
                        width: 8.0.rw,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'تلگرام',
                        style: TextStyle(
                            fontSize: 2.7.rt - 5,
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
                          width: 8.0.rw,
                        ),
                        scale: 1.4,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'اینستاگرام',
                        style: TextStyle(
                            fontSize: 2.7.rt - 5,
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
