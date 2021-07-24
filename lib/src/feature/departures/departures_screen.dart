import 'package:ding/src/feature/departures/widgets/device_page.dart';
import 'package:ding/src/feature/departures/widgets/location_page.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeparturesScreen extends StatefulWidget {
  const DeparturesScreen({Key? key}) : super(key: key);

  @override
  _DeparturesScreenState createState() => _DeparturesScreenState();
}

class _DeparturesScreenState extends State<DeparturesScreen> {
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
                  height: 8.2 * SizeConfig.heightMultiplier!,
                  color: value == 0 ? DingColors.dark() : DingColors.light(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/device.svg',
                        width: 3.67 * SizeConfig.heightMultiplier!,
                        height: 3.67 * SizeConfig.heightMultiplier!,
                        color: value == 0 ? DingColors.primary() : Colors.grey,
                      ),
                      SizedBox(
                        width: 3 * SizeConfig.widthMultiplier!,
                      ),
                      Text(
                        'دستگاه',
                        style: TextStyle(
                            fontSize: 2.73 * SizeConfig.textMultiplier!,
                            color: value == 0
                                ? DingColors.primary()
                                : Colors.grey),
                      ),
                    ],
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
                  height: 8.2 * SizeConfig.heightMultiplier!,
                  color: value == 1 ? DingColors.dark() : DingColors.light(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/location.svg',
                        width: 3.67 * SizeConfig.heightMultiplier!,
                        height: 3.67 * SizeConfig.heightMultiplier!,
                        color: value == 1 ? DingColors.primary() : Colors.grey,
                      ),
                      SizedBox(
                        width: 3 * SizeConfig.widthMultiplier!,
                      ),
                      Text(
                        'لوکیشن',
                        style: TextStyle(
                            fontSize: 2.73 * SizeConfig.textMultiplier!,
                            color: value == 1
                                ? DingColors.primary()
                                : Colors.grey),
                      ),
                    ],
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
              DevicePage(),
              LocationPage()
            ],
          ),
        )
      ],
    );
  }
}
