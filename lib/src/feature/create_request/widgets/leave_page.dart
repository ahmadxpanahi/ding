import 'package:ding/src/feature/create_request/widgets/date_picker.dart';
import 'package:ding/src/feature/create_request/widgets/type_picker.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jalali_calendar/jalali_calendar.dart';

class LeavePage extends StatefulWidget {
  const LeavePage({Key? key}) : super(key: key);

  @override
  _LeavePageState createState() => _LeavePageState();
}

class _LeavePageState extends State<LeavePage> {
  PersianDate? begin;
  PersianDate? end;

  _datePickers(context) => Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier! * 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DDatePicker(title: 'شروع', type: 'begin'),
            SizedBox(
              height: 2.7 .rw,
            ),
            DDatePicker(title: 'پایان', type: 'end'),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _datePickers(context),
            Column(
              children: [
                SizedBox(
                  height: 3.6 .rw,
                ),
                TypePicker(),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier!*3),
              margin: EdgeInsets.symmetric(
                  vertical: SizeConfig.heightMultiplier! * 3,
                  horizontal: SizeConfig.widthMultiplier! * 4),
              height: 20.5*SizeConfig.heightMultiplier!,
              child: TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 2.8*SizeConfig.heightMultiplier!),
                  hintText: 'لطفا توضیحات خود را اینجا وارد کنید.',
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: DingColors.light())),
            ),
            Container(
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
                style: TextStyle(
                    fontSize: 3.0.rt,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
