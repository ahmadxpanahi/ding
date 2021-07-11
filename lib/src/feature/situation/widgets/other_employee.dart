import 'package:ding/ui/colors.dart';
import 'package:flutter/material.dart';

class OtherEmployee extends StatelessWidget {
  String? imgUrl;
  String? name;
  String? unit;
  String? reason;

  OtherEmployee({Key? key, this.name, this.imgUrl, this.unit, this.reason})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
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
                      Text(
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
          Divider()
        ],
      ),
    );
  }
}
