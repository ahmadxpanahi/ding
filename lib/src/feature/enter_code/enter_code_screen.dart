import 'package:another_flushbar/flushbar.dart';
import 'package:ding/src/bloc/login_bloc/login_bloc.dart';
import 'package:ding/src/bloc/login_bloc/login_event.dart';
import 'package:ding/src/bloc/login_bloc/login_state.dart';
import 'package:ding/src/di/inject.dart';
import 'package:ding/src/feature/home/home_screen.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/show_flushbar.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:swagger/api.dart' as api;
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class EnterCodeScreen extends StatelessWidget {
  final String? phoneNumber;
  final int? userId;

  const EnterCodeScreen({Key? key, this.phoneNumber, this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (_) => LoginBloc(inject(), inject()),
      child: EnterCodeContaier(
        phoneNumber: phoneNumber,
        userId: userId,
      ),
    );
  }
}

class EnterCodeContaier extends StatefulWidget {
  final String? phoneNumber;
  final int? userId;

  EnterCodeContaier({Key? key, this.phoneNumber, this.userId})
      : super(key: key);

  @override
  _EnterCodeContaierState createState() => _EnterCodeContaierState();
}

class _EnterCodeContaierState extends State<EnterCodeContaier> {
  String _code = '';

  late LoginBloc _loginBloc;

  @override
  void initState() {
    super.initState();

    _loginBloc = BlocProvider.of<LoginBloc>(context);
    _loginBloc.add(SendTwoFactorCode(widget.userId ?? -1));
  }

  Widget _enterButton() => GestureDetector(
        onTap: () {
          _loginBloc.add(LoginWithOTP(_code, widget.phoneNumber ?? ""));
        },
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            alignment: Alignment.center,
            height: 9.0.rh,
            width: 73.2.rw,
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

  get _body => Scaffold(
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
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 6 * SizeConfig.widthMultiplier!,
                          ),
                          color: DingColors.dark(),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'کد را وارد کنید',
                    style:
                        TextStyle(fontSize: 2.73.rt, color: DingColors.dark()),
                  ),
                  PinCodeTextField(
                    onTextChanged: (val) {
                      setState(() {
                        _code = val;
                      });
                    },
                    maxLength: 6,
                    pinBoxColor: Colors.white,
                    pinBoxDecoration:
                        ProvidedPinBoxDecoration.underlinedPinBoxDecoration,
                    defaultBorderColor: DingColors.light(),
                    pinBoxWidth: 9.7.rw,
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
                    'کد به ${'${0.toString().toPersianDigit()}${widget.phoneNumber.toString().toPersianDigit()}'} ارسال شد',
                    style: TextStyle(
                        fontSize: 2.73.rt,
                        color: DingColors.dark(),
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 1.3.rh,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: CountdownTimer(
                      endTime:
                          DateTime.now().millisecondsSinceEpoch + 2000 * 30,
                      onEnd: () {},
                      endWidget: SizedBox(),
                    ),
                  ),
                  Text(
                    'ارسال مجدد',
                    style: TextStyle(
                      fontSize: 2 * SizeConfig.textMultiplier!,
                      color: DingColors.light(),
                    ),
                  ),
                  SizedBox(
                    height: 2.73 * SizeConfig.heightMultiplier!,
                  ),
                ],
              ),
            ),
            Expanded(flex: 2, child: _enterButton()),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) => BlocListener<LoginBloc, LoginState>(
      child: _body,
      listener: (_, state) {
        if (state is LoginErrorState) {
          showFlushBar(context, state.message?.dingError);
        } else if (state is LoginWithOTPSuccessful) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        }
      });
}
