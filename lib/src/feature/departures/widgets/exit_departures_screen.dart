import 'dart:convert';

import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/feature/departures/bloc/departures_bloc.dart';
import 'package:ding/src/feature/departures/bloc/departures_event.dart';
import 'package:ding/src/feature/departures/bloc/departures_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/dialog.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jalali_calendar/jalali_calendar.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class ExitDeparturesScreen extends StatefulWidget {
  int progress;
  ExitDeparturesScreen({Key? key, this.progress = 0}) : super(key: key);

  @override
  _ExitDeparturesScreenState createState() => _ExitDeparturesScreenState();
}

class _ExitDeparturesScreenState extends State<ExitDeparturesScreen> {
  late DeparturesBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<DeparturesBloc>(context);
  }

  Widget _buildBody() => Container(
    color: Colors.white,
    child: Column(
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier! * 4,
            ),
            Text(
              'ثبت خروج',
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
                      ? Transform.scale(
                    scale: SizeConfig.heightMultiplier! < 6 ? 0.6 : 1,
                    child: CircularProgressIndicator(
                      color: DingColors.primary(),
                    ),
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
                      ? Transform.scale(
                    scale: SizeConfig.heightMultiplier! < 6 ? 0.6 : 1,
                    child: CircularProgressIndicator(
                      color: DingColors.primary(),
                    ),
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
                      ? Transform.scale(
                    scale: SizeConfig.heightMultiplier! < 6 ? 0.6 : 1,
                    child: CircularProgressIndicator(
                      color: DingColors.primary(),
                    ),
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
        ),
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
                              'خروج شما در روز سه شنبه ${PersianDate().getNow.toPersianDigit()} با موفقیت ثبت شد',
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
          } else if (state is DoDepartureError) {
            Map errorMap = json.decode(state.message);
            print(state.message);
            showDialog(
                context: context,
                builder: (_) => DingDialog(
                  title: errorMap['error']['message'].toString(),
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
