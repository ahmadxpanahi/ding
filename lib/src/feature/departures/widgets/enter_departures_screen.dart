import 'package:ding/src/feature/departures/bloc/departures_bloc.dart';
import 'package:ding/src/feature/departures/bloc/departures_event.dart';
import 'package:ding/src/feature/departures/bloc/departures_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/dialog.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterDeparturesScreen extends StatefulWidget {
  int progress;
  EnterDeparturesScreen({Key? key, this.progress = 0}) : super(key: key);

  @override
  _EnterDeparturesScreenState createState() => _EnterDeparturesScreenState();
}

class _EnterDeparturesScreenState extends State<EnterDeparturesScreen> {
  late DeparturesBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<DeparturesBloc>(context);
  }

  Widget _buildBody() => Column(
        children: [
          SizedBox(
            height: SizeConfig.heightMultiplier! * 4,
          ),
          Text(
            'ثبت ورود',
            style: TextStyle(fontSize: SizeConfig.textMultiplier! * 2.5),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier! * 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'اتصال به دینگ',
                style: TextStyle(fontSize: SizeConfig.textMultiplier! * 2.5),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier! * 5),
                child: widget.progress == 0
                    ? CircularProgressIndicator(
                        color: DingColors.primary(),
                      )
                    : Icon(
                        Icons.check,
                        color: DingColors.primary(),
                        size: SizeConfig.heightMultiplier! * 6,
                      ),
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier! * 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'بررسی ارتباط با شبکه (اینترنت)',
                style: TextStyle(fontSize: SizeConfig.textMultiplier! * 2.5),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier! * 5),
                child: widget.progress == 1
                    ? CircularProgressIndicator(
                        color: DingColors.primary(),
                      )
                    : Icon(
                        Icons.check,
                        color: DingColors.primary(),
                        size: SizeConfig.heightMultiplier! * 6,
                      ),
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier! * 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'ثبت عملیات در سرور',
                style: TextStyle(fontSize: SizeConfig.textMultiplier! * 2.5),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier! * 5),
                child: widget.progress == 2
                    ? CircularProgressIndicator(
                        color: DingColors.primary(),
                      )
                    : Icon(
                        Icons.check,
                        color: DingColors.primary(),
                        size: SizeConfig.heightMultiplier! * 6,
                      ),
              )
            ],
          ),
        ],
      );

  @override
  Widget build(BuildContext context) =>
      BlocListener<DeparturesBloc, DeparturesState>(
        child: _buildBody(),
        listener: (_, state) {
          if (state is DeparturesStatusState) {
            if (state.showDialog) {
              if (state.dialogType == 'success') {
                showDialog(
                    context: context,
                    builder: (_) => DingDialog(
                          title:
                              'ورود شما در روز سه شنبه 10/03/1389 ساعت 20:05 با موفقیت ثبت شد',
                          buttonText: 'متوجه شدم',
                          onClick: () {
                            Navigator.pop(context);
                            _bloc.add(BackToInitial());
                          },
                        ));
              } else if (state.dialogType == 'network') {
                showDialog(
                    context: context,
                    builder: (_) => DingDialog(
                          title: 'اتصال اینترنت خود را بررسی کنید.',
                          buttonText: 'متوجه شدم',
                          onClick: () {
                            Navigator.pop(context);
                            _bloc.add(BackToInitial());
                          },
                        ));
              }
            }
          } else if(state is DoDepartureError) {
            showDialog(
                context: context,
                builder: (_) => DingDialog(
                  title: state.message,
                  buttonText: 'متوجه شدم',
                  onClick: () {
                    Navigator.pop(context);
                    _bloc.add(BackToInitial());
                  },
                ));
          }
        },
      );
}
