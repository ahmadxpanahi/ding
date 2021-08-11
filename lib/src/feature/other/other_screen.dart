import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/di/inject.dart';
import 'package:ding/src/feature/account_management/account_management_screen.dart';
import 'package:ding/src/feature/number_login/number_login_screen.dart';
import 'package:ding/src/feature/other/bloc/others_bloc.dart';
import 'package:ding/src/feature/other/bloc/others_event.dart';
import 'package:ding/src/feature/other/bloc/others_state.dart';
import 'package:ding/src/feature/setting/setting_screen.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OtherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BlocProvider<OthersBloc>(
        create: (_) => OthersBloc(inject(), inject()),
        child: _OtherScreenContainer(),
      );
}

class _OtherScreenContainer extends StatefulWidget {
  const _OtherScreenContainer({Key? key}) : super(key: key);

  @override
  _OtherScreenState createState() => _OtherScreenState();
}

class _OtherScreenState extends State<_OtherScreenContainer> {
  late OthersBloc _othersBloc;

  @override
  void initState() {
    super.initState();

    _othersBloc = BlocProvider.of<OthersBloc>(context);
    _othersBloc.add(LoadProfile());
  }

  get _avatarWidget => BlocBuilder<OthersBloc, OthersState>(
    bloc: _othersBloc,
    buildWhen: (o, n) => n is ProfileLoaded,
    builder: (_, state) {
      if (state is ProfileLoaded) {
        return Container(
          width: 20.0.rw,
          height: 20.0.rw,
          decoration: BoxDecoration(
            color: DingColors.light(),
            shape: BoxShape.circle,
            image: DecorationImage(
                image: MemoryImage(state.imageBinary), fit: BoxFit.fill),
          ),
        );
      }

      return Container(
        width: 20.0.rw,
        height: 20.0.rw,
        decoration: BoxDecoration(
          color: DingColors.light(),
          shape: BoxShape.circle,
        ),
      );
    },
  );

  get _profileRowWidget => BlocBuilder<OthersBloc, OthersState>(
    bloc: _othersBloc,
    buildWhen: (o, n) => n is ProfileLoaded,
    builder: (_, state) {
      if (state is ProfileLoaded) {
        return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _getProfileName(state),
                      style: TextStyle(
                          fontSize: SizeConfig.heightMultiplier! < 6
                              ? 4.0.rw
                              : 5.0.rw,
                          fontWeight: FontWeight.bold,
                          color: DingColors.dark()),
                    ),
                    Text(
                      'توسعه ارتباطات دینگ',
                      style: TextStyle(
                          fontSize: SizeConfig.heightMultiplier! < 6
                              ? 3.5.rw
                              : 4.5.rw,
                          fontWeight: FontWeight.w300,
                          color: DingColors.dark()),
                    ),
                    Text(
                      'ادمین',
                      style: TextStyle(
                          fontSize: 5.0.rw - 5,
                          fontWeight: FontWeight.w200,
                          color: DingColors.dark()),
                    ),
                  ],
                );
      }

      return SizedBox();
    },
  );

  String _getProfileName(ProfileLoaded state) => state.profileName.length > 0 ? state.profileName : "--";

  Widget _profileContainer() => Expanded(
      flex: 3,
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                _avatarWidget,
                SizedBox(
                  width: 3.6.rw,
                ),
                _profileRowWidget
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
            width: SizeConfig.heightMultiplier! < 6 ? 7.0.rw : 8.0.rw,
          ),
          SizedBox(
            width: 6.0.rw,
          ),
          Text(
            txt,
            style: TextStyle(
                fontSize: SizeConfig.textMultiplier! < 6 ? 3.5.rw : 4.0.rw,
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
