import 'package:ding/src/feature/enter_code/enter_code_screen.dart';
import 'package:ding/src/feature/number_login/number_login_screen.dart';
import 'package:ding/ui/colors.dart';
import 'package:ding/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmailLoginScreen extends StatefulWidget {
  const EmailLoginScreen({Key? key}) : super(key: key);

  @override
  _EmailLoginScreenState createState() => _EmailLoginScreenState();
}

class _EmailLoginScreenState extends State<EmailLoginScreen> {
  bool _validation() => _emailValue == '' || _passValue == '' ? true : false;
  bool _checkBoxValue = false;
  String _emailValue = '';
  String _passValue = '';

  Widget _enterButton() => GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => EnterCodeScreen()));
        },
        child: Container(
          alignment: Alignment.center,
          height: 9 * SizeConfig.heightMultiplier!,
          width: 73.2 * SizeConfig.widthMultiplier!,
          decoration: BoxDecoration(
            color:
                _validation() ? DingColors.veryLight() : DingColors.primary(),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            'ورود',
            style: TextStyle(
                fontSize: 2.73 * SizeConfig.textMultiplier!,
                color: _validation() ? DingColors.light() : Colors.white),
          ),
        ),
      );

  Widget _enterWithNumber() => GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NumberLoginScreen()));
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 25),
          height: 9 * SizeConfig.heightMultiplier!,
          width: 73.2 * SizeConfig.widthMultiplier!,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: DingColors.dark(), width: 2)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: SizedBox()),
              Text(
                'ورود با شماره موبایل',
                style: TextStyle(
                    fontSize: 2.73 * SizeConfig.textMultiplier!,
                    color: DingColors.dark()),
              ),
              Expanded(
                  child: SvgPicture.asset(
                'assets/images/phone.svg',
                color: DingColors.dark(),
              )),
            ],
          ),
        ),
      );

  Widget _rules() => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 65.8 * SizeConfig.widthMultiplier!,
        child: RichText(
          textAlign: TextAlign.end,
          maxLines: 2,
          text: TextSpan(
              text: 'قوانین و شرایط',
              style: TextStyle(
                  fontSize: 4.1 * SizeConfig.widthMultiplier!,
                  fontWeight: FontWeight.bold,
                  color: DingColors.dark()),
              children: [
                TextSpan(
                    text:
                    ' استفاده از سامانه دینگ را به صورت کامل مطالعه نموده ام',
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize:
                        4.1 * SizeConfig.widthMultiplier!,
                        color: DingColors.dark()))
              ]),
        ),
      ),
      SizedBox(
        width: 7,
      ),
      Transform.scale(
        scale: (SizeConfig.widthMultiplier! / 2.5),
        child: Checkbox(
          activeColor: DingColors.primary(),
          value: _checkBoxValue,
          onChanged: (val) {
            setState(() {
              _checkBoxValue = val ?? false;
            });
          },
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            right: 7.3 * SizeConfig.widthMultiplier!,
            left: 7.3 * SizeConfig.widthMultiplier!,
            top: 5.47 * SizeConfig.heightMultiplier!),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'ورود با ایمیل',
                    style: TextStyle(
                        fontSize: 2.73 * SizeConfig.textMultiplier!,
                        color: DingColors.dark()),
                  ),
                  SizedBox(
                    height: 2.73 * SizeConfig.heightMultiplier!,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 8.2 * SizeConfig.heightMultiplier!,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.6, color: DingColors.dark())),
                          child: TextField(
                            onChanged: (val) {
                              setState(() {
                                _emailValue = val;
                              });
                            },
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                                fontSize: 2.73 * SizeConfig.textMultiplier!,
                                letterSpacing: 2),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'ایمیل',
                                hintStyle: TextStyle(
                                    fontSize: 2.73 * SizeConfig.textMultiplier!,
                                    color: Colors.grey)),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier! * 2,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 8.2 * SizeConfig.heightMultiplier!,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.6, color: DingColors.dark())),
                          child: TextField(
                            onChanged: (val) {
                              setState(() {
                                _passValue = val;
                              });
                            },
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                                fontSize: 2.73 * SizeConfig.textMultiplier!,
                                letterSpacing: 2),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'رمز عبور',
                                hintStyle: TextStyle(
                                    fontSize: 2.73 * SizeConfig.textMultiplier!,
                                    color: Colors.grey)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                children: [
                  _rules(),
                  SizedBox(
                    height: 15,
                  ),
                  _enterButton(),
                ],
              ),
            ),
            Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: _enterWithNumber()))
          ],
        ),
      ),
    );
  }
}
