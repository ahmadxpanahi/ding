import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/di/inject.dart';
import 'package:ding/src/feature/home/home_screen.dart';
import 'package:ding/src/feature/intro_pages/first_intro_page.dart';
import 'package:ding/src/feature/number_login/number_login_screen.dart';
import 'package:ding/src/feature/splash/bloc/splash_bloc.dart';
import 'package:ding/src/feature/splash/bloc/splash_event.dart';
import 'package:ding/src/feature/splash/bloc/splash_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jalali_calendar/jalali_calendar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<SplashBloc>(
        create: (_) => SplashBloc(inject(), inject()),
        child: SplashContainer(),
      );
}

class SplashContainer extends StatefulWidget {
  const SplashContainer({Key? key}) : super(key: key);

  @override
  _SplashContainerState createState() => _SplashContainerState();
}

class _SplashContainerState extends State<SplashContainer> {
  late SplashBloc _splashBloc;
  TokenManager? _tokenManager;

  @override
  void initState() {
    super.initState();

    _splashBloc = BlocProvider.of<SplashBloc>(context);

    Future.delayed(Duration(seconds: 1), () async {
      
      _tokenManager = TokenManager(inject());
      var _accessToken = _tokenManager?.getAccessToken();
      bool firstLunch = _tokenManager?.getFirstLunch() ?? true;

      if (_accessToken!.length <= 8) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => firstLunch ? FirstIntro() : NumberLoginScreen()));
      } else {
        _splashBloc.add(LoadProfileBasics());
      }
    });
  }

  Widget _buildBody() => Scaffold(
        body: Container(
            width: double.infinity,
            color: DingColors.primary(),
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                SvgPicture.asset(
                  'assets/images/name_logo.svg',
                  width: 13.6.rh,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                          bottom: SizeConfig.heightMultiplier! * 3),
                      child: Text(
                        'www.dingontime.com',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white.withOpacity(0.7),
                            letterSpacing: 3),
                      ),
                    ),
                  ),
                )
              ],
            )),
      );

  @override
  Widget build(BuildContext context) => BlocListener<SplashBloc, SplashState>(
        bloc: _splashBloc,
        child: _buildBody(),
        listener: (_, state) {
          if(state is ProfileBasicsLoaded) {
            bool firstLunch = _tokenManager?.getFirstLunch() ?? true;
            if(_tokenManager?.getFirstLunch() != null)
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => firstLunch ? FirstIntro() : HomeScreen()));
          }
        },
      );
}
