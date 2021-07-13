import 'package:ding/ui/colors.dart';
import 'package:ding/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class EnterCodeScreen extends StatefulWidget {
  const EnterCodeScreen({Key? key}) : super(key: key);

  @override
  _EnterCodeScreenState createState() => _EnterCodeScreenState();
}

class _EnterCodeScreenState extends State<EnterCodeScreen> {
  String _code = '';

  Widget _enterButton() => Align(
    alignment: Alignment.topCenter,
    child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EnterCodeScreen()));
          },
          child: Container(
            alignment: Alignment.center,
            height: 65,
            width: 73.2 * SizeConfig.widthMultiplier!,
            decoration: BoxDecoration(
              color: _code == '' ? DingColors.veryLight() : DingColors.primary(),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              'ورود',
              style: TextStyle(
                  fontSize: 20,
                  color: _code == '' ? DingColors.light() : Colors.white),
            ),
          ),
        ),
  );

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
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
                          onPressed: (){Navigator.pop(context);},
                          icon: Icon(Icons.arrow_forward_ios),
                          color: DingColors.dark(),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'کد را وارد کنید',
                    style: TextStyle(fontSize: 20, color: DingColors.dark()),
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
                    pinBoxWidth: 40,
                    errorBorderColor: DingColors.warning(),
                    hasTextBorderColor: DingColors.light(),
                    pinBoxHeight: 70,
                    pinTextStyle: TextStyle(fontSize: 30, color: DingColors.dark()),
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
                        fontSize: 20,
                        color: DingColors.dark(),
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    '00:36',
                    style: TextStyle(
                        fontSize: 20,
                        color: DingColors.dark(),
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'ارسال مجدد',
                    style: TextStyle(
                      fontSize: 15,
                      color: DingColors.light(),
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            Expanded(flex: 2,child: _enterButton()),
          ],
        ),
      );
}
