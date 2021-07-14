import 'package:ding/src/feature/email_login/email_login_screen.dart';
import 'package:ding/src/feature/enter_code/enter_code_screen.dart';
import 'package:ding/ui/colors.dart';
import 'package:ding/ui/size_config.dart';
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
          height: 9 * SizeConfig.heightMultiplier!,
          width: 73.2 * SizeConfig.widthMultiplier!,
          decoration: BoxDecoration(
            color: phoneNumber == ''
                ? DingColors.veryLight()
                : DingColors.primary(),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            'دریافت کد',
            style: TextStyle(
                fontSize: 2.73 * SizeConfig.textMultiplier!,
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
                'ورود با ایمیل',
                style: TextStyle(
                    fontSize: 2.73 * SizeConfig.textMultiplier!,
                    color: DingColors.dark()),
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
          height: 8.2 * SizeConfig.heightMultiplier!,
          color: DingColors.veryLight(),
          child: CountryCodePicker(
            alignLeft: false,
            showFlag: false,
            showFlagDialog: true,
            dialogSize: Size(
                87.5 * SizeConfig.widthMultiplier!,
                73.2 *
                    SizeConfig.heightMultiplier!),
            padding: EdgeInsets.all(0),
            textStyle: TextStyle(
                fontSize: 5.7 +
                    SizeConfig.textMultiplier!,
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
          height: 8.2 * SizeConfig.heightMultiplier!,
          color: DingColors.veryLight(),
          child: TextField(
            onChanged: (val) {
              setState(() {
                phoneNumber = val;
              });
            },
            keyboardType: TextInputType.phone,
            style: TextStyle(
                fontSize:
                2.73 * SizeConfig.textMultiplier!,
                letterSpacing: 2),
            decoration:
            InputDecoration(border: InputBorder.none),
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
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(
              right: 7.3 * SizeConfig.widthMultiplier!,
              left: 7.3 * SizeConfig.widthMultiplier!,
              top: 5.47 * SizeConfig.heightMultiplier!),
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
                          fontSize: 2.73 * SizeConfig.textMultiplier!,
                          color: DingColors.dark()),
                    ),
                    SizedBox(
                      height: 2.73 * SizeConfig.heightMultiplier!,
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: _phoneNumberField()
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.73 * SizeConfig.heightMultiplier!,
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
      );
}
