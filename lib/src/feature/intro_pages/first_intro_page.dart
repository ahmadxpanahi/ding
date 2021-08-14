import 'package:ding/src/feature/intro_pages/second_intro_page.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:ding/src/utils/extensions.dart';

class FirstIntro extends StatelessWidget {
  const FirstIntro({Key? key}) : super(key: key);

  Widget _changePageContainer(Color color, String txt, context, nextPage) =>
      GestureDetector(
        onTap: () {
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
            Image.asset('assets/images/first_page.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _changePageContainer(
                    DingColors.primary(), 'بعدی', context, SecondIntro()),
              ],
            )
          ],
        ));
  }
}
