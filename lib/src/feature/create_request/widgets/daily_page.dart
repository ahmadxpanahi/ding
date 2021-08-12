import 'package:another_flushbar/flushbar.dart';
import 'package:ding/src/feature/create_request/bloc/cr_request_bloc.dart';
import 'package:ding/src/feature/create_request/bloc/cr_request_event.dart';
import 'package:ding/src/feature/create_request/bloc/cr_request_state.dart';
import 'package:ding/src/feature/create_request/widgets/date_picker.dart';
import 'package:ding/src/feature/create_request/widgets/type_picker.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jalali_calendar/jalali_calendar.dart';
import 'package:ding/src/utils/date_utils.dart';
import 'package:swagger/api.dart' as swagger;

class DailyPage extends StatefulWidget {
  DailyPage({
    Key? key,
  }) : super(key: key);

  @override
  _DailyPageState createState() => _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  late CreateRequestsBloc _requestsBloc;
  PersianDate? _begin;
  PersianDate? _end;
  PersianDate? _enterLeaveDate;
  String? _comment;
  int? requestType;
  int _type = 1;

  _datePickers(context) => Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier! * 4),
        child: BlocBuilder<CreateRequestsBloc, CreateRequestState>(
          builder: (_, state) {
            if (state is UpdateRequestsTypeState) {
              if (state.type == 1) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DDatePicker(
                      daily: true,
                      title: 'شروع',
                      type: 'begin',
                      onChangeDate: (dateTime) {
                        _begin = dateTime;
                      },
                    ),
                    SizedBox(
                      height: 2.7.rw,
                    ),
                    DDatePicker(
                      daily: true,
                      title: 'پایان',
                      type: 'end',
                      onChangeDate: (dateTime) {
                        _end = dateTime;
                      },
                    ),
                  ],
                );
              } else if (state.type == 2) {
                return DDatePicker(
                  daily: true,
                  title: 'زمان',
                  type: 'begin',
                  onChangeDate: (dateTime) {
                    _enterLeaveDate = dateTime;
                  },
                );
              } else {
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DDatePicker(
                      daily: true,
                      title: 'شروع',
                      type: 'begin',
                      onChangeDate: (dateTime) {
                        _begin = dateTime;
                      },
                    ),
                    SizedBox(
                      height: 2.7.rw,
                    ),
                    DDatePicker(
                      daily: true,
                      title: 'پایان',
                      type: 'end',
                      onChangeDate: (dateTime) {
                        _end = dateTime;
                      },
                    ),
                  ],
                );
              }
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DDatePicker(
                  daily: true,
                  title: 'شروع',
                  type: 'begin',
                  onChangeDate: (dateTime) {
                    _begin = dateTime;
                  },
                ),
                SizedBox(
                  height: 2.7.rw,
                ),
                DDatePicker(
                  daily: true,
                  title: 'پایان',
                  type: 'end',
                  onChangeDate: (dateTime) {
                    _end = dateTime;
                  },
                ),
              ],
            );
          },
        ),
      );

  @override
  void initState() {
    super.initState();
    _requestsBloc = BlocProvider.of<CreateRequestsBloc>(context);
    _requestsBloc.add(UpdateRequestType(type: 1));
  }

  void _showFlushBar(message) async {
    await Flushbar(
      backgroundColor: DingColors.warning(),
      duration: Duration(seconds: 2),
      borderRadius: BorderRadius.circular(100),
      padding: EdgeInsets.all(15),
      message: message,
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: FlushbarPosition.TOP,
    ).show(context);
  }

  Widget _buildBody() => SingleChildScrollView(
        child: Column(
          children: [
            _datePickers(context),
            Column(
              children: [
                SizedBox(
                  height: 3.6.rw,
                ),
                BlocBuilder<CreateRequestsBloc, CreateRequestState>(
                  bloc: _requestsBloc,
                  builder: (_, state) {
                    if (state is UpdateRequestsTypeState) {
                      _type = state.type;
                      if (state.type == 1) {
                        return TypePicker(
                          getRequestType: (T) {
                            requestType = T;
                          },
                          key: UniqueKey(),
                          type: 1,
                          vacationOptions: [
                            'مرخصی اجباری',
                            'مرخصی روزانه',
                            'مرخصی ساعتی',
                            'SickLeave',
                            'HourlySickLeave'
                          ],
                        );
                      } else if (state.type == 2) {
                        return TypePicker(
                            getRequestType: (T) {
                              requestType = T;
                            },
                            key: UniqueKey(),
                            type: 2,
                            enterLeaveOptions: [
                              'ورود',
                              'خروج',
                            ]);
                      } else {
                        requestType = 6;
                        return SizedBox();
                      }
                    }
                    return SizedBox();
                  },
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier! * 3),
              margin: EdgeInsets.symmetric(
                  vertical: SizeConfig.heightMultiplier! * 3,
                  horizontal: SizeConfig.widthMultiplier! * 4),
              height: 20.5 * SizeConfig.heightMultiplier!,
              child: TextField(
                keyboardType: TextInputType.name,
                onChanged: (val) {
                  if (val.length > 0) _comment = val;
                },
                maxLines: 3,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle:
                      TextStyle(fontSize: 2.8 * SizeConfig.heightMultiplier!),
                  hintText: 'لطفا توضیحات خود را اینجا وارد کنید.',
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: DingColors.light())),
            ),
            BlocBuilder<CreateRequestsBloc, CreateRequestState>(
              bloc: _requestsBloc,
              builder: (_, state) {
                if (state is CrRequestLoadingState) {
                  return CircularProgressIndicator(
                    color: DingColors.primary(),
                  );
                } else {
                  return GestureDetector(
                    onTap: () {
                      if (_type == 2) {
                        if (_enterLeaveDate != null)
                          _requestsBloc.add(CreateRequest(
                            type: _type,
                            date: DDateUtils.createISOFromPersian(
                                _enterLeaveDate!, DateTime(0, 0, 0, 0, 0)),
                            time:
                                '${_enterLeaveDate?.hour}:${_enterLeaveDate?.minute}:${_enterLeaveDate?.second}',
                            comment: _comment ?? '',
                            requestStatus: 2,
                            requestType: requestType,
                          ));
                        else {
                          _showFlushBar('فیلد های خواسته شده را تکمیل کنید.');
                        }
                      } else {
                        if (_end != null && _begin != null)
                          _requestsBloc.add(CreateRequest(
                            type: _type,
                            comment: _comment ?? '',
                            beginDate: DDateUtils.createISOFromPersian(
                                _begin!, DateTime(0, 0, 0, 0, 0)),
                            endDate: DDateUtils.createISOFromPersian(
                                _end!, DateTime(0, 0, 0, 0, 0)),
                            requestStatus: 2,
                            requestType: requestType,
                          ));
                        else {
                          _showFlushBar('فیلد های خواسته شده را تکمیل کنید.');
                        }
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(
                        horizontal: 12.0.rw,
                      ),
                      height: 8.8.rh,
                      decoration: BoxDecoration(
                          color: DingColors.primary(),
                          borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        'تایید',
                        style: TextStyle(fontSize: 3.0.rt, color: Colors.white),
                      ),
                    ),
                  );
                }
              },
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateRequestsBloc, CreateRequestState>(
      bloc: _requestsBloc,
      listener: (_, state) {
        if (state is CreateRequestSuccess) {
          Navigator.pop(context);
        } else if (state is CrRequestErrorState) {
          _showFlushBar(state.message);
        }
      },
      child: _buildBody(),
    );
  }
}
