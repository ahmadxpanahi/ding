import 'package:ding/src/feature/requests/bloc/requests_bloc.dart';
import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/date_utils.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jalali_calendar/jalali_calendar.dart';
import 'package:swagger/api.dart' as req;
import 'package:persian_number_utility/persian_number_utility.dart';

class MyRequestsItem extends StatefulWidget {
  int? userId;
  int? type;
  int? status;
  DateTime? date;
  String? info1;
  String? info2;

  MyRequestsItem({
    Key? key,
    this.userId,
    this.status,
    this.date,
    this.info1,
    this.info2,
    this.type,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyRequestsItemState();
}

class _MyRequestsItemState extends State<MyRequestsItem> {
  late RequestsBloc _requestsBloc;

  @override
  void initState() {
    super.initState();

    _requestsBloc = BlocProvider.of<RequestsBloc>(context);
  }

  int get key {
    return int.parse(widget.key.toString());
  }

  String myType() {
    if (widget.type! < 6) {
      return 'vacation';
    } else if (widget.type == 6) {
      return 'mission';
    } else if (widget.type == 7) {
      return 'enter';
    } else {
      return 'leave';
    }
  }

  Color _statusColor() => widget.status == 2
      ? DingColors.primary()
      : widget.status == 3
          ? DingColors.warning()
          : Colors.grey;

  String _statusText() => widget.status == 2
      ? "تایید شد"
      : widget.status == 3
          ? 'رد شد'
          : 'درحال بررسی';

  Color _typeColor() => myType() == 'vacation'
      ? DingColors.secondary()
      : myType() == 'mission'
          ? Colors.grey
          : DingColors.primary();

  String _typeText() => myType() == 'vacation'
      ? "مرخصی"
      : myType() == 'mission'
          ? 'ماموریت'
          : myType() == 'enter'
              ? 'ورود'
              : 'خروج';

  Widget _buildBody() => Container(
        height: 14.7.rh,
        margin: EdgeInsets.only(top: 8),
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: _typeColor(),
                child: Column(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          _typeText(),
                          style: TextStyle(
                              color: myType() == 'vacation'
                                  ? DingColors.dark()
                                  : Colors.white,
                              fontSize: 2.73.rt),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white.withOpacity(0.2),
                        child: Column(
                          children: [
                            Expanded(
                                child: Row(
                              children: [
                                Text(
                                  '${widget.date?.day.toString().toPersianDigit()} ${DDateUtils.createPersianDate(widget.date!.year, widget.date!.month, widget.date!.day).monthname}',
                                  style: TextStyle(
                                      color: myType() == 'vacation'
                                          ? DingColors.dark()
                                          : Colors.white,
                                      fontSize: 2.2.rt),
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                            )),
                            Expanded(
                              child: widget.date != null
                                  ? Text(
                                      '${widget.date!.hour.toString().toPersianDigit()}:${widget.date!.minute.toString().toPersianDigit()}:${widget.date!.second.toString().toPersianDigit()}',
                                      style: TextStyle(
                                          color: myType() == 'vacation'
                                              ? DingColors.dark()
                                              : Colors.white,
                                          fontSize: 2.2.rt),
                                    )
                                  : SizedBox(),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 3 + SizeConfig.widthMultiplier!,
                                height: 3 + SizeConfig.widthMultiplier!,
                                decoration: BoxDecoration(
                                    color: _typeColor(),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                '${widget.date?.day.toString().toPersianDigit()} ${DDateUtils.createPersianDateFromGregorian(widget.date).monthname}',
                                style: TextStyle(
                                    fontSize: 2.2.rt, color: DingColors.dark()),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 3 + SizeConfig.widthMultiplier!,
                                height: 3 + SizeConfig.widthMultiplier!,
                                decoration: BoxDecoration(
                                    color: _typeColor(),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                widget.info2 ?? '',
                                style: TextStyle(
                                    fontSize: 2.2.rt, color: DingColors.dark()),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      _statusText(),
                      style: TextStyle(fontSize: 2.2.rt, color: _statusColor()),
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier!,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: SizeConfig.widthMultiplier! * 5,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) =>
      BlocListener<RequestsBloc, RequestsState>(
        bloc: _requestsBloc,
        child: _buildBody(),
        listener: (_, state) {
          if (state is ImageLoaded) {
            if (state.id == key) {
              setState(() {});
            }
          }
        },
      );
}
