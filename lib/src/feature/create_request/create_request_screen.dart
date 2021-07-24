import 'package:ding/src/feature/create_request/widgets/leave_page.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:flutter/material.dart';

class CreateRequestScreen extends StatefulWidget {
  const CreateRequestScreen({Key? key}) : super(key: key);

  @override
  _CreateRequestScreenState createState() => _CreateRequestScreenState();
}

class _CreateRequestScreenState extends State<CreateRequestScreen> {
  PageController? _controller;
  int value = 0;
  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          padding: EdgeInsets.only(top: 2.2 * SizeConfig.heightMultiplier!),
          alignment: Alignment.center,
          color: DingColors.primary(),
          height: 13.3 * SizeConfig.heightMultiplier!,
          child: Row(
            children: [
              Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: 2.4 * SizeConfig.widthMultiplier!),
                      child: IconButton(
                        color: Colors.white,
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 3*SizeConfig.heightMultiplier!,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  )),
              Text(
                'ثبت درخواست',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 2.73 * SizeConfig.textMultiplier!,
                    color: Colors.white),
              ),
              Expanded(child: SizedBox())
            ],
          ),
        ),
      ),
      body: Column(
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
                      'مرخصی',
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
                      'ورود و خروج',
                      style: TextStyle(
                          fontSize: 2.73 * SizeConfig.textMultiplier!,
                          color: value == 1 ? DingColors.primary() : Colors.grey),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    _controller!.animateToPage(2,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.linear);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 8.2 * SizeConfig.heightMultiplier!,
                    color: value == 2 ? DingColors.dark() : DingColors.light(),
                    child: Text(
                      'ماموریت',
                      style: TextStyle(
                          fontSize: 2.73 * SizeConfig.textMultiplier!,
                          color: value == 2 ? DingColors.primary() : Colors.grey),
                    ),
                  ),
                ),
              ),
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
                  LeavePage(),
                  Container(color: DingColors.secondary(),),
                  Container(color: DingColors.warning(),)
                ],
              ))
        ],
      ),
    );
  }
}
