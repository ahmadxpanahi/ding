import 'package:ding/src/feature/email_login/bloc/email_bloc.dart';
import 'package:ding/src/feature/email_login/bloc/email_event.dart';
import 'package:ding/src/feature/email_login/bloc/email_state.dart';
import 'package:ding/src/feature/enter_code/enter_code_screen.dart';
import 'package:ding/src/feature/number_login/number_login_screen.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EmailLoginScreen extends StatelessWidget {
  const EmailLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EmailBloc>(
      create: (_) => EmailBloc(),
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
  bool _validation() => _emailValue == '' || _passValue == '' ? true : false;
  bool _checkBoxValue = false;
  String _emailValue = '';
  String _passValue = '';
  String _tenancyValue = '';
  late EmailBloc _emailBloc;
  var sp;

  Widget _enterButton() => BlocBuilder<EmailBloc, EmailState>(
        bloc: _emailBloc,
        builder: (_, state) {
          if (state is LoginLoading && state.loading) {
            return CircularProgressIndicator();
          }
          return GestureDetector(
            onTap: () {
              _emailBloc.add(
                LoginWithEmailEvent()
                  ..tenancyName = _tenancyValue
                  ..password = _passValue
                  ..userName = _emailValue,
              );
            },
            child: Container(
              alignment: Alignment.center,
              height: 9 * SizeConfig.heightMultiplier!,
              width: 73.2 * SizeConfig.widthMultiplier!,
              decoration: BoxDecoration(
                color: _validation()
                    ? DingColors.veryLight()
                    : DingColors.primary(),
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
                            fontSize: 4.1 * SizeConfig.widthMultiplier!,
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
    _emailBloc = BlocProvider.of<EmailBloc>(context);
  }

  Widget _buildBody() => Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
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
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 8.2 * SizeConfig.heightMultiplier!,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.6, color: Colors.grey)),
                            child: TextField(
                              onChanged: (val) {
                                setState(() {
                                  _tenancyValue = val;
                                });
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  fontSize: 2.73 * SizeConfig.textMultiplier!,
                                  letterSpacing: 2),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'مستاجر',
                                  hintStyle: TextStyle(
                                      fontSize:
                                          2.73 * SizeConfig.textMultiplier!,
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
                                    width: 0.6, color: Colors.grey)),
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
                                      fontSize:
                                          2.73 * SizeConfig.textMultiplier!,
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
                                    width: 0.6, color: Colors.grey)),
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
                                      fontSize:
                                          2.73 * SizeConfig.textMultiplier!,
                                      color: Colors.grey)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.7 * SizeConfig.heightMultiplier!,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      _rules(),
                      SizedBox(
                        height: 2 * SizeConfig.heightMultiplier!,
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
  Widget build(BuildContext context) => BlocListener<EmailBloc, EmailState>(
      child: _buildBody(),
      listener: (_, state) {
        if (state is LoginWithEmailSuccessful) {

        } else if (state is LoginError) {
          print('error');
          print(state.message ?? '');
        }
      });
}
