import 'dart:convert';
import 'package:another_flushbar/flushbar.dart';
import 'package:ding/src/bloc/login_bloc/login_bloc.dart';
import 'package:ding/src/bloc/login_bloc/login_event.dart';
import 'package:ding/src/bloc/login_bloc/login_state.dart';
import 'package:ding/src/di/inject.dart';
import 'package:ding/src/feature/home/home_screen.dart';
import 'package:ding/src/feature/number_login/number_login_screen.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/show_flushbar.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class EmailLoginScreen extends StatelessWidget {
  const EmailLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (_) => LoginBloc(inject(), inject()),
      child: _EmailLoginContainer(),
    );
  }
}

class _EmailLoginContainer extends StatefulWidget {
  const _EmailLoginContainer({Key? key}) : super(key: key);

  @override
  _EmailLoginContainerState createState() => _EmailLoginContainerState();
}

class _EmailLoginContainerState extends State<_EmailLoginContainer> {
  bool _validation() => _emailValue == '' ||
          _passValue == '' ||
          _tenancyValue == '' ||
          _checkBoxValue == false
      ? false
      : true;
  bool _checkBoxValue = false;
  String _emailValue = '';
  String _passValue = '';
  String _tenancyValue = '';
  late LoginBloc _emailBloc;
  var sp;

  Widget _enterButton() => BlocBuilder<LoginBloc, LoginState>(
        bloc: _emailBloc,
        builder: (_, state) {
          if (state is LoginLoadingState && state.isLoading) {
            return CircularProgressIndicator(
              color: DingColors.primary(),
            );
          }
          return GestureDetector(
            onTap: () {
              if (_validation()) {
                _emailBloc.add(
                    LoginWithEmail(_emailValue, _passValue, _tenancyValue));
              }
            },
            child: Container(
              alignment: Alignment.center,
              height: 9.0.rh,
              width: 73.2.rw,
              decoration: BoxDecoration(
                color: _validation()
                    ? DingColors.primary()
                    : DingColors.veryLight(),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                'ورود',
                style: TextStyle(
                    fontSize: 2.73.rt,
                    color: _validation() ? Colors.white : DingColors.light()),
              ),
            ),
          );
        },
      );

  Widget _enterWithNumber() => GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NumberLoginScreen()));
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
                'ورود با شماره موبایل',
                style: TextStyle(fontSize: 2.73.rt, color: DingColors.dark()),
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
  void initState() {
    super.initState();
    _emailBloc = BlocProvider.of<LoginBloc>(context);
  }

  Widget _buildBody() => Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.only(right: 7.3.rw, left: 7.3.rw, top: 5.47.rh),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: SizeConfig.heightMultiplier! >= 7 ? 2.0.rh : 0,),
                      Text(
                        'ورود با ایمیل',
                        style: TextStyle(
                            fontSize: 2.73.rt, color: DingColors.dark()),
                      ),
                      SizedBox(
                        height: 2.73.rh,
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 8.2.rh,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 0.6, color: Colors.grey)),
                            child: TextField(
                              onChanged: (val) {
                                setState(() {
                                  _tenancyValue = val;
                                });
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  fontSize: 2.73.rt, letterSpacing: 2),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'نام شرکت',
                                  hintStyle: TextStyle(
                                      fontSize: 2.73.rt, color: Colors.grey)),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier! * 2,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 8.2.rh,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 0.6, color: Colors.grey)),
                            child: TextField(
                              onChanged: (val) {
                                setState(() {
                                  _emailValue = val;
                                });
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  fontSize: 2.73.rt, letterSpacing: 2),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'ایمیل',
                                  hintStyle: TextStyle(
                                      fontSize: 2.73.rt, color: Colors.grey)),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier! * 2,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 8.2.rh,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 0.6, color: Colors.grey)),
                            child: TextField(
                              obscureText: true,
                              onChanged: (val) {
                                setState(() {
                                  _passValue = val;
                                });
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  fontSize: 2.73.rt, letterSpacing: 2),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'رمز عبور',
                                  hintStyle: TextStyle(
                                      fontSize: 2.73.rt, color: Colors.grey)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.7.rh,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      _rules(),
                      SizedBox(
                        height: 2.0.rh,
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
        ),
      );

  @override
  Widget build(BuildContext context) => BlocListener<LoginBloc, LoginState>(
      child: _buildBody(),
      listener: (_, state) async {
        if (state is LoginWithEmailSuccessful) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        } else if (state is LoginErrorState) {
          showFlushBar(context, state.message?.dingError);
        }
      });
}
