import 'package:ding/domain/entity/detailed_data.dart';
import 'package:ding/ui/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailedItem extends StatefulWidget {
  DetailedData detailedData;

  DetailedItem({Key? key, required this.detailedData}) : super(key: key);

  @override
  _DetailedItemState createState() => _DetailedItemState();
}

class _DetailedItemState extends State<DetailedItem> {
  @override
  Widget build(BuildContext context) {

    int bPeriodMin = widget.detailedData.bPeriod.minute;
    int bPeriodHour = widget.detailedData.bPeriod.hour;
    int ePeriodMin = widget.detailedData.ePeriod.minute;
    int ePeriodHour = widget.detailedData.ePeriod.hour;
    int timeMin = widget.detailedData.time.minute;
    int timeHour = widget.detailedData.time.hour;

    return Column(
      children: [
        ListTile(
          onTap: () {},
          title: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: Colors.grey,
              ),
              Column(
                children: [
                  Text(
                    'جمع کارکرد',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: DingColors.primary()),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '${timeHour}:${timeMin}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              Text(
                '${bPeriodHour}:${bPeriodMin} / ${ePeriodHour}:${ePeriodMin}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black),
              ),
              Container(
                margin: EdgeInsets.only(right: 5, left: 10, top: 5, bottom: 5),
                height: 100,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 3, color: DingColors.primary())),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.detailedData.day,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                    Text(
                      widget.detailedData.month,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                    Text(
                      widget.detailedData.year,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}