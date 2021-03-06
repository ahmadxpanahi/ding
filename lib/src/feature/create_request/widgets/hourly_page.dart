import 'package:another_flushbar/flushbar.dart';
import 'package:ding/src/feature/create_request/bloc/cr_request_bloc.dart';
import 'package:ding/src/feature/create_request/bloc/cr_request_event.dart';
import 'package:ding/src/feature/create_request/bloc/cr_request_state.dart';
import 'package:ding/src/feature/create_request/widgets/date_picker.dart';
import 'package:ding/src/feature/create_request/widgets/type_picker.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/date_utils.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jalali_calendar/jalali_calendar.dart';

class HourlyPage extends StatefulWidget {
  const HourlyPage({Key? key}) : super(key: key);

  @override
  _HourlyPageState createState() => _HourlyPageState();
}

class _HourlyPageState extends State<HourlyPage> {
  late CreateRequestsBloc _requestsBloc;
  PersianDate? _beginDate;
  DateTime? _beginTime;
  PersianDate? _endDate;
  DateTime? _endTime;
  String? _comment;
  PersianDate? _enterLeaveDate;
  DateTime? _enterLeaveTime;
  int? requestType;
  int? requestStatus = 1;
  int _type = 1;

  @override
  void initState() {
    super.initState();
    _requestsBloc = BlocProvider.of<CreateRequestsBloc>(context);
    _requestsBloc.add(UpdateRequestType(type: 1));
  }

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
                      daily: false,
                      title: '????????',
                      type: 'begin',
                      onChangeDate: (dateTime) {
                        _beginDate = dateTime;
                      },
                      onChangeTime: (dateTime) {
                        _beginTime = dateTime;
                      },
                    ),
                    SizedBox(
                      height: 2.7.rw,
                    ),
                    DDatePicker(
                      daily: false,
                      title: '??????????',
                      type: 'end',
                      onChangeDate: (dateTime) {
                        _endDate = dateTime;
                      },
                      onChangeTime: (dateTime) {
                        _endTime = dateTime;
                      },
                    ),
                  ],
                );
              } else if (state.type == 2) {
                return DDatePicker(
                  daily: false,
                  title: '????????',
                  type: 'begin',
                  onChangeDate: (dateTime) {
                    _enterLeaveDate = dateTime;
                  },
                  onChangeTime: (dateTime) {
                    _enterLeaveTime = dateTime;
                  },
                );
              } else {
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DDatePicker(
                      daily: false,
                      title: '????????',
                      type: 'begin',
                      onChangeDate: (dateTime) {
                        _beginDate = dateTime;
                      },
                      onChangeTime: (dateTime) {
                        _beginTime = dateTime;
                      },
                    ),
                    SizedBox(
                      height: 2.7.rw,
                    ),
                    DDatePicker(
                      daily: false,
                      title: '??????????',
                      type: 'end',
                      onChangeDate: (dateTime) {
                        _endDate = dateTime;
                      },
                      onChangeTime: (dateTime) {
                        _endTime = dateTime;
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
                  daily: false,
                  title: '????????',
                  type: 'begin',
                  onChangeDate: (dateTime) {
                    _beginDate = dateTime;
                  },
                  onChangeTime: (dateTime) {
                    _beginTime = dateTime;
                  },
                ),
                SizedBox(
                  height: 2.7.rw,
                ),
                DDatePicker(
                  daily: false,
                  title: '??????????',
                  type: 'end',
                  onChangeDate: (dateTime) {
                    _endDate = dateTime;
                  },
                  onChangeTime: (dateTime) {
                    _endTime = dateTime;
                  },
                ),
              ],
            );
          },
        ),
      );

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
                            '?????????? ????????????',
                            '?????????? ????????????',
                            '?????????? ??????????',
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
                              '????????',
                              '????????',
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
                onChanged: (val) {
                  _comment = val;
                },
                keyboardType: TextInputType.name,
                maxLines: 3,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle:
                      TextStyle(fontSize: 2.8 * SizeConfig.heightMultiplier!),
                  hintText: '???????? ?????????????? ?????? ???? ?????????? ???????? ????????.',
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
                                _enterLeaveDate!,
                                DateTime(
                                    0,
                                    0,
                                    0,
                                    _enterLeaveDate!.hour!,
                                    _enterLeaveDate!.minute!,
                                    _enterLeaveDate!.second!)),
                            time:
                                '${_enterLeaveDate?.hour}:${_enterLeaveDate?.minute}:${_enterLeaveDate?.second}',
                            comment: _comment ?? '',
                            requestStatus: 2,
                            requestType: requestType,
                          ));
                        else {
                          _showFlushBar(
                              '?????????? ???????? ?????? ???????????? ?????? ???? ?????????? ????????.');
                        }
                      } else {
                        if (_beginTime != null &&
                            _beginTime != null &&
                            _endTime != null &&
                            _endDate != null) {
                          _requestsBloc.add(CreateRequest(
                            type: _type,
                            comment: _comment ?? '',
                            beginDate: DDateUtils.createISOFromPersian(
                                _beginDate!, _beginTime!),
                            endDate: DDateUtils.createISOFromPersian(
                                _endDate!, _endTime!),
                            requestStatus: 2,
                            requestType: requestType,
                          ));
                        } else {
                          _showFlushBar(
                              '?????????? ???????? ?????? ???????????? ?????? ???? ?????????? ????????.');
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
                        '??????????',
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
  Widget build(BuildContext context) => BlocListener(
        bloc: _requestsBloc,
        listener: (_, state) {
          if (state is CreateRequestSuccess) {
            Navigator.pop(context);
          } else if (state is CrRequestErrorState) {
            Future.delayed(Duration.zero, () async {
              await Flushbar(
                backgroundColor: DingColors.warning(),
                duration: Duration(seconds: 2),
                borderRadius: BorderRadius.circular(100),
                padding: EdgeInsets.all(15),
                message: state.message,
                flushbarPosition: FlushbarPosition.TOP,
              ).show(context);
            });
          }
        },
        child: _buildBody(),
      );
}
