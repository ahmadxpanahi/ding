
import 'package:ding/ui/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchItems extends StatefulWidget {
  SwitchItems({Key? key}) : super(key: key);

  @override
  _SwitchItemsState createState() => _SwitchItemsState();
}

class _SwitchItemsState extends State<SwitchItems> {

  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;

  Widget _item(bool value,String title,int number) {

    return Column(
      children: [
        Row(
          children: [
            CupertinoSwitch(
                value: value,
                activeColor: DingColors.primary(),
                onChanged: (val) {setState(() {
                  switch(number){
                    case 0: {val1=val;} break;
                    case 1: {val2=val;} break;
                    case 2: {val3=val;} break;
                    case 3: {val4=val;} break;
                  }

                });}),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Divider()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      color: Colors.white,
      child: Column(
        children: [
          _item(val1,'افزودن خود به لیست حضور و غیاب',0),
          _item(val2,'دریافت اطلاعیه(نوتیفیکیشن)',1),
          _item(val3,'یادآوری ثبت ورود و خروج',2),
          _item(val4,'دریافت جمله روز',3),
          Text('data')

        ],
      )
    );
  }
}
