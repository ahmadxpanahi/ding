import 'package:ding/ui/colors.dart';
import 'package:flutter/material.dart';
class OptionsTile extends StatelessWidget {

  IconData icon;
  String title;

  OptionsTile({Key? key,this.title='',this.icon=Icons.arrow_back_ios}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
    children: [
      Container(
        margin: EdgeInsets.only(right: 15),
        child: Row(
          children: [
            Icon(
              icon,
              color: DingColors.primary(),
              size: 33,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ],
        ),
      ),
      Divider()
    ],
  );
}
