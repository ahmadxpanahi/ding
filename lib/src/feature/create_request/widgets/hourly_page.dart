import 'package:ding/src/core/logger/logger.dart';
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
  late RequestsBloc _requestsBloc;
  PersianDate? _beginDate;
  DateTime? _beginTime;
  PersianDate? _endDate;
  DateTime? _endTime;
  String? _comment;
  int? requestType;
  int? requestStatus = 1;

  _datePickers(context) => Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier! * 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DDatePicker(
              daily: false,
              title: 'شروع',
              type: 'begin',
              onChangeDate: (dateTime) {
                _beginDate = dateTime;
                print("BEGIN DATE :");
                print(_beginDate);
              },
              onChangeTime: (dateTime) {
                _beginTime = dateTime;
                print("BEGIN TIME :");
                print(_beginTime);
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
                print("END DATE :");
                print(_endDate);
              },
              onChangeTime: (dateTime) {
                _endTime = dateTime;
                print("END TIME :");
                print(_endTime);
              },
            ),
          ],
        ),
      );

  @override
  void initState() {
    super.initState();
    _requestsBloc = BlocProvider.of<RequestsBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _datePickers(context),
          Column(
            children: [
              SizedBox(
                height: 3.6.rw,
              ),
              BlocBuilder<RequestsBloc, RequestsState>(
                builder: (_, state) {
                  if (state is UpdateRequestsTypeState) {
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
                  return TypePicker(
                    type: 1,
                    vacationOptions: [
                      'مرخصی اجباری',
                      'مرخصی روزانه',
                      'مرخصی ساعتی',
                      'SickLeave',
                      'HourlySickLeave'
                    ],
                  );
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
          BlocBuilder<RequestsBloc, RequestsState>(
            bloc: _requestsBloc,
            builder: (_, state) {
              if (state is RequestsLoadingState) {
                return CircularProgressIndicator(
                  color: DingColors.primary(),
                );
              } else {
                return GestureDetector(
                  onTap: () {
                    _requestsBloc.add(CreateRequest(
                      comment: _comment ?? '',
                      beginDate: DDateUtils.createISO(_beginDate!, _beginTime!),
                      endDate: DDateUtils.createISO(_endDate!, _endTime!),
                      requestStatus: requestStatus,
                      requestType: requestType,
                    ));
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
  }
}
