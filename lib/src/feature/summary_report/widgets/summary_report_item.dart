import 'package:ding/src/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:ding/src/utils/extensions.dart';

class SummaryReportItem extends StatelessWidget {
  SummaryReportItem(this.time,this.title,{Key? key}) : super(key: key);
  String title;
  String time;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 8.5.rh,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier! * 4.5,
                  vertical: SizeConfig.heightMultiplier!),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    time,
                    style: TextStyle(fontSize: 2.2.rt + 1),
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 2.2.rt + 1),
                  ),
                ],
              ),
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
