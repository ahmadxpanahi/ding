import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/feature/create_request/bloc/cr_request_bloc.dart';
import 'package:ding/src/feature/create_request/bloc/cr_request_event.dart';
import 'package:ding/src/feature/create_request/bloc/cr_request_state.dart';
import 'package:ding/src/feature/create_request/widgets/date_picker.dart';
import 'package:ding/src/feature/create_request/widgets/type_picker.dart';
import 'package:ding/src/feature/requests/bloc/requests_bloc.dart';
import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/date_utils.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
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
                  title: 'شروع',
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
                  title: 'پایان',
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
              title: 'زمان',
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
                  title: 'شروع',
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
                  title: 'پایان',
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
              title: 'شروع',
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
              title: 'پایان',
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

  @override
  void initState() {
    super.initState();
    _requestsBloc = BlocProvider.of<CreateRequestsBloc>(context);
    _requestsBloc.add(UpdateRequestType(type: 1));
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
            onChanged: (val){
              _comment = val;
            },
            keyboardType: TextInputType.name,
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
                  if(_type == 2){
                    _requestsBloc.add(CreateRequest(
                      type: _type,
                      date: DDateUtils.createISO(
                          _enterLeaveDate!, DateTime(0, 0, 0, 0, 0)),
                      time: '${_enterLeaveDate?.hour}:${_enterLeaveDate?.minute}:${_enterLeaveDate?.second}',
                      comment: _comment ?? '',
                      requestStatus: 2,
                      requestType: requestType,
                    ));
                  }else{
                    if(_beginTime != null && _beginTime != null && _endTime != null && _endDate != null){
                      _requestsBloc.add(CreateRequest(
                        type: _type,
                        comment: _comment ?? '',
                        beginDate: DDateUtils.createISO(
                            _beginDate!, _beginTime!),
                        endDate: DDateUtils.createISO(
                            _endDate!, _endTime!),
                        requestStatus: 2,
                        requestType: requestType,
                      ));
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
  Widget build(BuildContext context) => BlocListener(
    bloc: _requestsBloc,
    listener: (_,state){
      if(state is CreateRequestSuccess){
        Navigator.pop(context);
      }
    },
    child: _buildBody(),
  );
}
