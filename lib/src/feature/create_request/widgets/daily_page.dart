import 'package:ding/src/feature/create_request/widgets/date_picker.dart';
import 'package:ding/src/feature/create_request/widgets/type_picker.dart';
import 'package:ding/src/feature/requests/bloc/requests_bloc.dart';
import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagger/api.dart' as swagger;

class DailyPage extends StatefulWidget {

  DailyPage({Key? key,}) : super(key: key);

  @override
  _DailyPageState createState() => _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  late RequestsBloc _requestsBloc;
  DateTime? _begin;
  DateTime? _end;
  String? _comment;
  int? requestType;

  _datePickers(context) => Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier! * 4),
        child: Column(
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
                        getRequestType: (T){
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
                          getRequestType: (T){
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
              onChanged: (val) {
                _comment = val;
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
          BlocBuilder<RequestsBloc,RequestsState>(
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
                      beginDate: _begin,
                      endDate: _end,
                      requestStatus: 1,
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
