import 'package:ding/src/feature/requests/widgets/my_requests_item.dart';
import 'package:ding/ui/colors.dart';
import 'package:flutter/material.dart';

class RequestsScreen extends StatefulWidget {
  const RequestsScreen({Key? key}) : super(key: key);

  @override
  _RequestsScreenState createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                color: DingColors.dark(),
                child: Text(
                  'درخواست های من',
                  style: TextStyle(fontSize: 20, color: DingColors.primary()),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                color: DingColors.light(),
                child: Text(
                  'کارتابل',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
            )
          ],
        ),
        Expanded(
          child: Column(
            children: [
              MyRequestsItem(
                status: 'pending',
                type: 'leave',
                info1: 'استعلاجی',
                info2: 'روزانه',
                time: DateTime.now(),
                date: '3 شهریور',
              ),
              MyRequestsItem(
                status: 'failed',
                type: 'enterAndExit',
                info1: 'ثبت',
                info2: 'لوکیشن',
                time: DateTime.now(),
                date: '3 شهریور',
              ),
              MyRequestsItem(
                status: 'accepted',
                type: 'mission',
                info1: 'استعلاجی',
                info2: 'روزانه',
                time: DateTime.now(),
                date: '3 شهریور',
              ),
            ],
          ),
        )
      ],
    );
  }
}
