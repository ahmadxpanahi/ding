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

  Widget _getCodeButton() => Container(
        alignment: Alignment.center,
        height: 65,
        width: 73.2 * SizeConfig.widthMultiplier!,
        decoration: BoxDecoration(
          color:
              phoneNumber == '' ? DingColors.veryLight() : DingColors.primary(),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          'دریافت کد',
          style: TextStyle(
              fontSize: 20,
              color: phoneNumber == '' ? DingColors.light() : Colors.white),
        ),
      );

  Widget _enterWithEmail() => Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 25),
        height: 65,
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
              style: TextStyle(fontSize: 20, color: DingColors.dark()),
            ),
            Expanded(
                child: SvgPicture.asset(
              'assets/images/mail.svg',
              color: DingColors.dark(),
            )),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'شماره موبایل خود را وارد کنید',
                      style: TextStyle(fontSize: 20, color: DingColors.dark()),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            height: 60,
                            color: DingColors.veryLight(),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: CountryCodePicker(
                                    alignLeft: false,
                                    showFlag: false,
                                    showFlagDialog: true,
                                    dialogSize: Size(
                                        87.5 * SizeConfig.widthMultiplier!,
                                        73.2 * SizeConfig.heightMultiplier!),
                                    padding: EdgeInsets.all(0),
                                    textStyle: TextStyle(
                                        fontSize: 13, color: DingColors.dark()),
                                    initialSelection: 'IR',
                                    favorite: ["IR"],
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Icon(Icons.arrow_drop_down_sharp))
                              ],
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
                            height: 60,
                            color: DingColors.veryLight(),
                            child: TextField(
                              onChanged: (val) {
                                setState(() {
                                  phoneNumber = val;
                                });
                              },
                              keyboardType: TextInputType.phone,
                              style: TextStyle(fontSize: 20, letterSpacing: 2),
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: DingColors.dark()),
                                children: [
                                  TextSpan(
                                      text:
                                          ' استفاده از سامانه دینگ را به صورت کامل مطالعه نموده ام',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w200,
                                          fontSize: 17,
                                          color: DingColors.dark()))
                                ]),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Transform.scale(
                          scale: 1.7,
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
                    ),
                    SizedBox(
                      height: 15,
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
