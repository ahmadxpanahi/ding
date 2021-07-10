import 'package:ding/ui/colors.dart';
import 'package:flutter/material.dart';

class SummaryReportScreen extends StatefulWidget {
  const SummaryReportScreen({Key? key}) : super(key: key);

  @override
  _SummaryReportScreenState createState() => _SummaryReportScreenState();
}

class _SummaryReportScreenState extends State<SummaryReportScreen> {

  Widget _summaryItem(title,leading) => Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              leading,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black),
            ),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      Divider()
    ],
  );

  @override
  Widget build(BuildContext context) => Scaffold(
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
                    'گزارش خلاصه',
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
          child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    _summaryItem('مجموع ساعات طول شیفت','200:45'),
                    _summaryItem('مجموع ساعات کارکرد','181:19'),
                    _summaryItem('مجموع ساعات تاخیر در ورود','0:23'),
                    _summaryItem('مجموع ساعات تعجیل در خروج','0:3'),
                    _summaryItem('مجموع ساعات غیبت','200:45'),
                    _summaryItem('مجموع ساعات اضافه کار','200:45'),
                    _summaryItem('مجموع ساعات ماموریت','200:45'),
                    _summaryItem('مجموع روز های ماموریت','1 روز'),
                    _summaryItem('مجموع ساعات مرخصی ساعتی','200:45'),
                    _summaryItem('مجموع روز های مرخصی','2 روز'),
                  ],
                ),
              ),
          ),
        )
      ],
    ),
  );
}
