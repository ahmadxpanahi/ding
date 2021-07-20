import 'package:ding/src/feature/create_request/create_request_screen.dart';
import 'package:ding/src/feature/requests/widgets/cartable_item.dart';
import 'package:ding/src/feature/requests/widgets/my_requests_item.dart';
import 'package:ding/ui/colors.dart';
import 'package:ding/ui/size_config.dart';
import 'package:flutter/material.dart';

class RequestsScreen extends StatefulWidget {
  const RequestsScreen({Key? key}) : super(key: key);

  @override
  _RequestsScreenState createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
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
                  child: Text(
                    'درخواست های من',
                    style: TextStyle(
                        fontSize: 2.73 * SizeConfig.textMultiplier!,
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
                  height: 8.2 * SizeConfig.heightMultiplier!,
                  color: value == 1 ? DingColors.dark() : DingColors.light(),
                  child: Text(
                    'کارتابل',
                    style: TextStyle(
                        fontSize: 2.73 * SizeConfig.textMultiplier!,
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
            Stack(
              children: [
                SingleChildScrollView(
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
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateRequestScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 15),
                      alignment: Alignment.center,
                      height: 14.6 * SizeConfig.widthMultiplier!,
                      width: 14.6 * SizeConfig.widthMultiplier!,
                      decoration: BoxDecoration(
                        color: DingColors.primary(),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 12 * SizeConfig.widthMultiplier!,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  CartableItem(
                    name: 'پژمان شفیعی',
                    info2: 'استعلاجی',
                    info1: 'مرخصی روزانه',
                    type: 'leave',
                    unit: 'واحد فروش',
                    imgUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbGv0MjXmTohr4qtlT2kRF6r4JlM1e-B32Lw02SvDeqS-zY8O8zl7l_WE-Cph1jot8Mag&usqp=CAU',
                    beginDate: '23 خرداد 1398 - 23:10',
                    date: '23 خرداد 1398 - 23:10',
                    endDate: '23 خرداد 1398 - 23:10',
                  ),
                  CartableItem(
                    name: 'پژمان شفیعی',
                    info2: 'ورود/لوکیشن',
                    info1: 'ورود و خروج',
                    type: 'enterAndExit',
                    unit: 'واحد فروش',
                    imgUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbGv0MjXmTohr4qtlT2kRF6r4JlM1e-B32Lw02SvDeqS-zY8O8zl7l_WE-Cph1jot8Mag&usqp=CAU',
                    date: '23 خرداد 1398 - 23:10',
                  ),
                  CartableItem(
                    name: 'پژمان شفیعی',
                    info2: 'استعلاجی',
                    info1: 'مرخصی روزانه',
                    type: 'mission',
                    unit: 'واحد فروش',
                    imgUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbGv0MjXmTohr4qtlT2kRF6r4JlM1e-B32Lw02SvDeqS-zY8O8zl7l_WE-Cph1jot8Mag&usqp=CAU',
                    beginDate: '23 خرداد 1398 - 23:10',
                    date: '23 خرداد 1398 - 23:10',
                    endDate: '23 خرداد 1398 - 23:10',
                  ),
                ],
              ),
            ),
          ],
        ))
      ],
    );
  }
}
