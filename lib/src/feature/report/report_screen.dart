import 'package:ding/src/feature/report/widgets/custom.dart';
import 'package:ding/src/feature/report/widgets/monthly.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  PageController? _controller;
  int value = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _controller!.animateToPage(0,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 8.2.rh,
                  color: value == 0 ? DingColors.dark() : DingColors.light(),
                  child: Text(
                    'ماهانه',
                    style: TextStyle(
                        fontSize: 2.73.rt,
                        color: value == 0 ? DingColors.primary() : Colors.grey),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _controller!.animateToPage(1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 8.2.rh,
                  color: value == 1 ? DingColors.dark() : DingColors.light(),
                  child: Text(
                    'سفارشی',
                    style: TextStyle(
                        fontSize: 2.73.rt,
                        color: value == 1 ? DingColors.primary() : Colors.grey),
                  ),
                ),
              ),
            )
          ],
        ),
        Expanded(
            child: PageView(
          controller: _controller,
          onPageChanged: (val) {
            setState(() {
              value = val;
            });
          },
          children: [
            MonthlyPage(),
            CustomPage(),
          ],
        ))
      ],
    );
  }
}
