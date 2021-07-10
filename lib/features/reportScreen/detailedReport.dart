import 'package:ding/features/reportScreen/entity/detailedData.dart';
import 'package:ding/features/reportScreen/reportWidgets.dart';
import 'package:ding/ui/colors.dart';
import 'package:flutter/material.dart';

class DetailedReport extends StatefulWidget {
  const DetailedReport({Key? key}) : super(key: key);

  @override
  _DetailedReportState createState() => _DetailedReportState();
}

class _DetailedReportState extends State<DetailedReport> {
  List<DetailedData> _list = <DetailedData>[
    DetailedData(
        bPeriod: DateTime.now(),
        day: 'شنبه 1',
        ePeriod: DateTime.now(),
        month: 'خرداد',
        time: DateTime.now(),
        year: '1400'),
    DetailedData(
        bPeriod: DateTime.now(),
        day: 'شنبه 1',
        ePeriod: DateTime.now(),
        month: 'خرداد',
        time: DateTime.now(),
        year: '1400'),
    DetailedData(
        bPeriod: DateTime.now(),
        day: 'شنبه 1',
        ePeriod: DateTime.now(),
        month: 'خرداد',
        time: DateTime.now(),
        year: '1400'),
    DetailedData(
        bPeriod: DateTime.now(),
        day: 'شنبه 1',
        ePeriod: DateTime.now(),
        month: 'خرداد',
        time: DateTime.now(),
        year: '1400'),
    DetailedData(
        bPeriod: DateTime.now(),
        day: 'شنبه 1',
        ePeriod: DateTime.now(),
        month: 'خرداد',
        time: DateTime.now(),
        year: '1400'),
    DetailedData(
        bPeriod: DateTime.now(),
        day: 'شنبه 1',
        ePeriod: DateTime.now(),
        month: 'خرداد',
        time: DateTime.now(),
        year: '1400'),
    DetailedData(
        bPeriod: DateTime.now(),
        day: 'شنبه 1',
        ePeriod: DateTime.now(),
        month: 'خرداد',
        time: DateTime.now(),
        year: '1400'),
    DetailedData(
        bPeriod: DateTime.now(),
        day: 'شنبه 1',
        ePeriod: DateTime.now(),
        month: 'خرداد',
        time: DateTime.now(),
        year: '1400'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          padding: EdgeInsets.only(top: 15),
          color: DingColors.primary(),
          height: 90,
          child: Row(
            children: [
              Expanded(child: SizedBox()),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'گزارش تفضیلی',
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                    Text(
                      'توسعه فناوری دینگ',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 30,
                            color: Colors.white,
                          )))),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 65,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'آیتا آتشگاهی',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                    Text(
                      'نام کارمند',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'خرداد 1400',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                    Text(
                      'ماه انتخاب شده',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 2,
            color: DingColors.primary(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _list.length,
              itemBuilder: (_, index) => DetailedItem(
                detailedData: _list[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
