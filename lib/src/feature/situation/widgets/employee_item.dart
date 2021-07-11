import 'package:ding/ui/colors.dart';
import 'package:flutter/material.dart';

class EmployeeItem extends StatelessWidget {
  String? status;
  String? imgUrl;
  String? name;
  String? unit;
  String? reason;

  EmployeeItem(
      {Key? key, this.status, this.name, this.imgUrl, this.unit, this.reason})
      : super(key: key);

  Color _color(status) => status == 'present'
      ? DingColors.primary()
      : status == 'absent'
          ? DingColors.warning()
          : DingColors.light();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      height: 92,
      padding: EdgeInsets.only(left: 20),
      color: Colors.white,
      child: Opacity(
        opacity: status == '' ? 0.5 : 1,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Container(width: 10, color: _color(status)),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            width: status == '' ? 0 : 4, color: _color(status)),
                        image: DecorationImage(
                            image: NetworkImage(
                          imgUrl ?? '',
                        ))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name ?? '',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      Text(
                        unit ?? '',
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      status == ''
                          ? SizedBox()
                          : Text(
                              status == 'present' ? 'حاضر' : 'غایب',
                              style: TextStyle(
                                  fontSize: 13, color: _color(status)),
                            ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  status == 'present'
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ورود',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              '23 : 8',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ],
                        )
                      : Text(
                          reason ?? '',
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
