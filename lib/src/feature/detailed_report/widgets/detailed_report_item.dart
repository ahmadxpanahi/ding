import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:ding/src/utils/extensions.dart';

class DetailedReportItem extends StatelessWidget {

  DetailedReportItem({Key? key,this.time,this.day,this.month,this.year}) : super(key: key);
  String? time;
  String? day;
  String? month;
  String? year;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier! * 4.5),
        margin: EdgeInsets.only(top: SizeConfig.heightMultiplier!),
        height: 14.7.rh,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    day!,
                    style: TextStyle(
                        fontSize: 2.8.rt + 1, color: DingColors.dark()),
                  ),
                  Text(
                    '${month} ${year}',
                    style:
                    TextStyle(fontSize: 2.3.rt + 1, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'جمع :',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier! * 2,
                ),
                Text(
                  time!,
                  style: TextStyle(fontSize: 15, color: DingColors.primary()),
                ),
              ],
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier! * 5,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 3.0.rh,
            )
          ],
        ));
  }
}
