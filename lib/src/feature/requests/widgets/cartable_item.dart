import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';

class CartableItem extends StatelessWidget {
  String? imgUrl;
  String? name;
  String? unit;
  String? date;
  String? beginDate;
  String? endDate;
  String? type;
  String? info1;
  String? info2;

  CartableItem(
      {Key? key,
      this.type,
      this.info2,
      this.info1,
      this.date,
      this.unit,
      this.imgUrl,
      this.name,
      this.endDate,
      this.beginDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _typeColor() => type == 'leave'
        ? DingColors.secondary()
        : type == 'enterAndExit'
            ? DingColors.primary()
            : Colors.grey;

    Widget _typeDetail() => type == 'leave'
        ? Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'شروع',
                    style: TextStyle(
                        fontSize: 4.0.rw,
                        color: Colors.grey),
                  ),
                  Text(
                    'پایان',
                    style: TextStyle(
                        fontSize: 4.0.rw,
                        color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                width: 5.0.rw,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    beginDate ?? '',
                    style: TextStyle(
                        fontSize: 4.0.rw,
                        color: DingColors.dark()),
                  ),
                  Text(
                    endDate ?? '',
                    style: TextStyle(
                        fontSize: 4.0.rw,
                        color: DingColors.dark()),
                  )
                ],
              ),
            ],
          )
        : type == 'enterAndExit'
            ? Row(
                children: [
                  Icon(
                    Icons.add,
                    color: DingColors.primary(),
                  ),
                  Text(
                    'نمایش جزءیات',
                    style: TextStyle(
                        fontSize: 4.0.rw,
                        color: DingColors.primary()),
                  )
                ],
              )
            : Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'شروع',
                        style: TextStyle(
                            fontSize: 4.0.rw,
                            color: Colors.grey),
                      ),
                      Text(
                        'پایان',
                        style: TextStyle(
                            fontSize: 4.0.rw,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5.0.rw,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        beginDate ?? '',
                        style: TextStyle(
                            fontSize: 4.0.rw,
                            color: DingColors.dark()),
                      ),
                      Text(
                        endDate ?? '',
                        style: TextStyle(
                            fontSize: 4.0.rw,
                            color: DingColors.dark()),
                      )
                    ],
                  ),
                ],
              );

    return Container(
      margin: EdgeInsets.only(top: 5),
      height: 33.8.rh,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            width: 4.1 .rw,
            color: _typeColor(),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 2.4 .rw),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 14.6 * SizeConfig.imageSizeMultiplier!,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: NetworkImage(imgUrl ?? '')))),
                      SizedBox(
                        width: 2.4 .rw,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name ?? '',
                              style: TextStyle(
                                  color: DingColors.dark(),
                                  fontSize: 4.0.rw),
                            ),
                            Text(
                              unit ?? '',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      4.0.rw - 2),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        date ?? '',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 4.0.rw - 2),
                      )
                    ],
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 3 + SizeConfig.widthMultiplier!,
                                  height: 3 + SizeConfig.widthMultiplier!,
                                  decoration: BoxDecoration(
                                      color: _typeColor(),
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  info1 ?? '',
                                  style: TextStyle(
                                      fontSize:
                                          4.0.rw,
                                      color: DingColors.dark()),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 3 + SizeConfig.widthMultiplier!,
                                  height: 3 + SizeConfig.widthMultiplier!,
                                  decoration: BoxDecoration(
                                      color: _typeColor(),
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  info2 ?? '',
                                  style: TextStyle(
                                      fontSize:
                                          4.0.rw,
                                      color: DingColors.dark()),
                                )
                              ],
                            ),
                          ],
                        ),
                        _typeDetail()
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 20.7 .rw,
                        height: 5.47.rh,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(width: 1, color: DingColors.warning()),
                        ),
                        child: Icon(
                          Icons.close,
                          size: 6.0.rw,
                          color: DingColors.warning(),
                        ),
                      ),
                      SizedBox(
                        width: 2.4 .rw,
                      ),
                      Container(
                        width: 20.7 .rw,
                        height: 5.47.rh,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(width: 1, color: DingColors.primary()),
                        ),
                        child: Icon(
                          Icons.check,
                          size: 6.0.rw,
                          color: DingColors.primary(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
