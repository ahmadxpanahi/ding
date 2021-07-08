import 'package:ding/features/todayScreen/entity/todayData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ListItem extends StatelessWidget {

  TodayData todayData;

  ListItem(
      {Key? key,
      required this.todayData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    int min = todayData.enterTime.minute;
    int hour = todayData.enterTime.hour;

    return Column(
      children: [
        ListTile(
          onTap: () {},
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          title: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.greenAccent),
                    image: DecorationImage(
                        image: NetworkImage(todayData.imgUrl), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.red),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                       todayData.name,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'ورود ${min} : ${hour}',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios,size: 30,color: Colors.grey,)
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}
