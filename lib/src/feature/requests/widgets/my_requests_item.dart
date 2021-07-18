import 'package:ding/ui/colors.dart';
import 'package:ding/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyRequestsItem extends StatelessWidget {
  String? type;
  String? status;
  String? date;
  DateTime? time;
  String? info1;
  String? info2;

  MyRequestsItem(
      {Key? key,
      this.status,
      this.time,
      this.date,
      this.info1,
      this.info2,
      this.type})
      : super(key: key);

  Color _statusColor() => status == 'accepted'
      ? DingColors.primary()
      : status == 'failed'
          ? DingColors.warning()
          : Colors.grey;

  String _statusText() => status == 'accepted'
      ? "تایید شد"
      : status == 'failed'
          ? 'رد شد'
          : 'درحال بررسی';

  Color _typeColor() => type == 'leave'
      ? DingColors.secondary()
      : type == 'enterAndExit'
          ? DingColors.primary()
          : Colors.grey;

  String _typeText() => type == 'leave'
      ? "مرخصی"
      : type == 'enterAndExit'
          ? 'ورود و خروج'
          : 'ماموریت';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.7 * SizeConfig.heightMultiplier!,
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
                            color: type == 'leave'
                                ? DingColors.dark()
                                : Colors.white,
                            fontSize: 2.73 * SizeConfig.textMultiplier!),
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
                                date ?? '',
                                style: TextStyle(
                                    color: type == 'leave'
                                        ? DingColors.dark()
                                        : Colors.white,
                                    fontSize: 2.2 * SizeConfig.textMultiplier!),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          )),
                          Expanded(
                              child: Text(
                            '${time!.hour}:${time!.minute}:${time!.second}',
                            style: TextStyle(
                                color: type == 'leave'
                                    ? DingColors.dark()
                                    : Colors.white,
                                fontSize: 2.2 * SizeConfig.textMultiplier!),
                          )),
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
                              info1 ?? '',
                              style: TextStyle(
                                  fontSize: 2.2 * SizeConfig.textMultiplier!,
                                  color: DingColors.dark()),
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
                              info2 ?? '',
                              style: TextStyle(
                                  fontSize: 2.2 * SizeConfig.textMultiplier!,
                                  color: DingColors.dark()),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    _statusText(),
                    style: TextStyle(
                        fontSize: 2.2 * SizeConfig.textMultiplier!,
                        color: _statusColor()),
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
  }
}
