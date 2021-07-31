import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/feature/home/home_screen.dart';
import 'package:ding/src/feature/number_login/number_login_screen.dart';
import 'package:ding/src/feature/splash/bloc/splash_bloc.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (_) => SplashBloc(),
      child: SplashContainer(),
    );
  }
}

class SplashContainer extends StatefulWidget {
  const SplashContainer({Key? key}) : super(key: key);

  @override
  _SplashContainerState createState() => _SplashContainerState();
}

class _SplashContainerState extends State<SplashContainer> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () async {
      SharedPreferences sp = await SharedPreferences.getInstance();
      var _tokenManager = TokenManager(sp);
      var _accessToken = _tokenManager.getAccessToken();
      if (_accessToken!.length <= 8) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => NumberLoginScreen()));
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
  }
}
