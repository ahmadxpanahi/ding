import 'package:ding/src/feature/splash/bloc/splash_bloc.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                width: 13.6 * SizeConfig.heightMultiplier!,
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
