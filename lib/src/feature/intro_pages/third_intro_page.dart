import 'package:ding/src/bloc/login_bloc/login_event.dart';
import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/data/http/token_manager.dart';
import 'package:ding/src/di/inject.dart';
import 'package:ding/src/feature/email_login/email_login_screen.dart';
import 'package:ding/src/feature/intro_pages/second_intro_page.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:ding/src/utils/extensions.dart';

class ThirdIntro extends StatelessWidget {
  ThirdIntro({Key? key}) : super(key: key);

  Widget _changePageContainer(
          Color color, String txt, context, nextPage, type) =>
      GestureDetector(
        onTap: () {
          TokenManager? tokenManager = TokenManager(inject());
          if (type == 'enter') {
            Future.delayed(Duration.zero, () async {
              await tokenManager.setFirstLunch(false);
            });
          }
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => nextPage));
        },
        child: Container(
          width: 15.0.rw,
          height: 15.0.rw,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          child: Center(
            child: Text(
              txt,
              style: TextStyle(color: Colors.white, fontSize: 4.5.rw),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/third_page.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _changePageContainer(DingColors.primary(), 'ورود', context,
                    EmailLoginScreen(), 'enter'),
                _changePageContainer(
                    DingColors.secondary(), 'قبلی', context, SecondIntro(), ''),
              ],
            )
          ],
        ));
  }
}
