import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class EnterCodeScreen extends StatefulWidget {
  const EnterCodeScreen({Key? key}) : super(key: key);

  @override
  _EnterCodeScreenState createState() => _EnterCodeScreenState();
}

class _EnterCodeScreenState extends State<EnterCodeScreen> {
  String _code = '';

  Widget _enterButton() => GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => EnterCodeScreen()));
        },
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            alignment: Alignment.center,
            height: 9.0.rh,
            width: 73.2 .rw,
            decoration: BoxDecoration(
              color:
                  _code == '' ? DingColors.veryLight() : DingColors.primary(),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              'ورود',
              style: TextStyle(
                  fontSize: 2.73.rt,
                  color: _code == '' ? DingColors.light() : Colors.white),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 2.73.rh,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_forward_ios,size: 6*SizeConfig.widthMultiplier!,),
                          color: DingColors.dark(),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'کد را وارد کنید',
                    style: TextStyle(
                        fontSize: 2.73.rt,
                        color: DingColors.dark()),
                  ),
                  PinCodeTextField(
                    onTextChanged: (val) {
                      setState(() {
                        _code = val;
                      });
                    },
                    maxLength: 4,
                    pinBoxColor: Colors.white,
                    pinBoxDecoration:
                        ProvidedPinBoxDecoration.underlinedPinBoxDecoration,
                    defaultBorderColor: DingColors.light(),
                    pinBoxWidth: 9.7 .rw,
                    errorBorderColor: DingColors.warning(),
                    hasTextBorderColor: DingColors.light(),
                    pinBoxHeight: 9.5.rh,
                    pinTextStyle:
                        TextStyle(fontSize: 30, color: DingColors.dark()),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'کد به +98 901 909 5564 ارسال شد',
                    style: TextStyle(
                        fontSize: 2.73.rt,
                        color: DingColors.dark(),
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 1.3.rh,
                  ),
                  Text(
                    '00:36',
                    style: TextStyle(
                        fontSize: 2.73.rt,
                        color: DingColors.dark(),
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'ارسال مجدد',
                    style: TextStyle(
                      fontSize: 2*SizeConfig.textMultiplier!,
                      color: DingColors.light(),
                    ),
                  ),
                  SizedBox(
                    height: 2.73*SizeConfig.heightMultiplier!,
                  ),
                ],
              ),
            ),
            Expanded(flex: 2, child: _enterButton()),
          ],
        ),
      );
}
