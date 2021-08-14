import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
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
      height: 14.7.rh,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.3.rh),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 8.5.rh,
                        height: 8.5.rh,
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
                            style: TextStyle(
                                fontSize: 3.5.rw, color: Colors.black),
                          ),
                          Text(
                            unit ?? '',
                            style:
                                TextStyle(fontSize: 3.5.rw, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        reason ?? '',
                        style: TextStyle(fontSize: 3.5.rw, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 5 + SizeConfig.widthMultiplier!,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: SizeConfig.widthMultiplier! * 5.5,
                      )
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
