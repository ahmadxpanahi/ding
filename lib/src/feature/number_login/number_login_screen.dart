import 'package:ding/src/feature/email_login/email_login_screen.dart';
import 'package:ding/src/feature/enter_code/enter_code_screen.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:country_code_picker/country_code_picker.dart';

class NumberLoginScreen extends StatefulWidget {
  const NumberLoginScreen({Key? key}) : super(key: key);

  @override
  _NumberLoginScreenState createState() => _NumberLoginScreenState();
}

class _NumberLoginScreenState extends State<NumberLoginScreen> {
  bool _checkBoxValue = false;
  String phoneNumber = '';

  Widget _getCodeButton() => GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => EnterCodeScreen()));
        },
        child: Container(
          alignment: Alignment.center,
          height: 9.0.rh,
          width: 73.2.rw,
          decoration: BoxDecoration(
            color: phoneNumber == ''
                ? DingColors.veryLight()
                : DingColors.primary(),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            'دریافت کد',
            style: TextStyle(
                fontSize: 2.73.rt,
                color: phoneNumber == '' ? DingColors.light() : Colors.white),
          ),
        ),
      );

  Widget _enterWithEmail() => GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => EmailLoginScreen()));
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 25),
          height: 9.0.rh,
          width: 73.2.rw,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: DingColors.dark(), width: 2)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: SizedBox()),
              Text(
                'ورود با ایمیل',
                style: TextStyle(fontSize: 2.73.rt, color: DingColors.dark()),
              ),
              Expanded(
                  child: SvgPicture.asset(
                'assets/images/mail.svg',
                color: DingColors.dark(),
              )),
            ],
          ),
        ),
      );

  Widget _phoneNumberField() => Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              height: 8.2.rh,
              color: DingColors.veryLight(),
              child: CountryCodePicker(
                alignLeft: false,
                showFlag: false,
                showFlagDialog: true,
                dialogSize: Size(87.5.rw, 73.2 * SizeConfig.heightMultiplier!),
                padding: EdgeInsets.all(0),
                textStyle: TextStyle(
                    fontSize: 5.7 + SizeConfig.textMultiplier!,
                    color: DingColors.dark()),
                initialSelection: 'IR',
                favorite: ["IR"],
              ),
            ),
          ),
          SizedBox(
            width: 2,
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 8.2.rh,
              color: DingColors.veryLight(),
              child: TextField(
                onChanged: (val) {
                  setState(() {
                    phoneNumber = val;
                  });
                },
                keyboardType: TextInputType.phone,
                style: TextStyle(fontSize: 2.73.rt, letterSpacing: 2),
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
          ),
        ],
      );

  Widget _rules() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 65.8.rw,
            child: RichText(
              textAlign: TextAlign.end,
              maxLines: 2,
              text: TextSpan(
                  text: 'قوانین و شرایط',
                  style: TextStyle(
                      fontSize: 4.1.rw,
                      fontWeight: FontWeight.bold,
                      color: DingColors.dark()),
                  children: [
                    TextSpan(
                        text:
                            ' استفاده از سامانه دینگ را به صورت کامل مطالعه نموده ام',
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 4.1.rw,
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
  Widget build(BuildContext context) => Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.only(right: 7.3.rw, left: 7.3.rw, top: 5.47.rh),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'شماره موبایل خود را وارد کنید',
                        style: TextStyle(
                            fontSize: 2.73.rt, color: DingColors.dark()),
                      ),
                      SizedBox(
                        height: 2.73.rh,
                      ),
                      Expanded(
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: _phoneNumberField()),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.73.rh,
                ),
                Expanded(
                  child: Column(
                    children: [
                      _rules(),
                      SizedBox(
                        height: SizeConfig.heightMultiplier! * 2,
                      ),
                      _getCodeButton(),
                    ],
                  ),
                ),
                Expanded(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: _enterWithEmail()))
              ],
            ),
          ),
        ),
      );
}
