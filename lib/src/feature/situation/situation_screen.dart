
import 'package:ding/src/feature/situation/widgets/employee_item.dart';
import 'package:ding/src/feature/situation/widgets/other_employee.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class SituationScreen extends StatefulWidget {
  const SituationScreen({Key? key}) : super(key: key);

  @override
  _SituationScreenState createState() => _SituationScreenState();
}

class _SituationScreenState extends State<SituationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      color: Colors.grey[100],
      child: SingleChildScrollView(
        child: Column(
          children: [
            EmployeeItem(
              status: 'present',
              imgUrl: 'https://image.flaticon.com/icons/png/512/147/147140.png',
              name: 'پژمان شفیعی',
              unit: 'واحد فروش',
            ),
            EmployeeItem(
              status: 'absent',
              imgUrl: 'https://image.flaticon.com/icons/png/512/147/147140.png',
              name: 'پژمان شفیعی',
              unit: 'واحد تحقیق و توسعه',
              reason: '--:--',
            ),
            EmployeeItem(
              status: '',
              imgUrl: 'https://image.flaticon.com/icons/png/512/147/147140.png',
              name: 'پژمان شفیعی',
              unit: 'واحد فروش',
              reason: '--:--',
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'سایر کارمندان',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  OtherEmployee(
                    imgUrl:
                        'https://image.flaticon.com/icons/png/512/147/147140.png',
                    name: 'پدرام یوسفی',
                    unit: 'واحد فروش',
                    reason: 'مرخصی',
                  ),
                  OtherEmployee(
                    imgUrl:
                        'https://image.flaticon.com/icons/png/512/147/147140.png',
                    name: 'پدرام یوسفی',
                    unit: 'واحد فروش',
                    reason: 'بدون شیفت',
                  ),
                  OtherEmployee(
                    imgUrl:
                        'https://image.flaticon.com/icons/png/512/147/147140.png',
                    name: 'پدرام یوسفی',
                    unit: 'واحد فروش',
                    reason: 'مرخصی',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
