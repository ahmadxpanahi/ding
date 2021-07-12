
import 'package:ding/ui/colors.dart';
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

    List<Widget> _typeDetail() => type == 'leave'
        ? <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 7,
                height: 7,
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
                    fontSize: 16, color: DingColors.dark()),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 7,
                height: 7,
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
                    fontSize: 16, color: DingColors.dark()),
              )
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'شروع',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Text(
            'پایان',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          )
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            beginDate ?? '',
            style: TextStyle(
                fontSize: 16, color: DingColors.dark()),
          ),
          Text(
            endDate ?? '',
            style: TextStyle(
                fontSize: 16, color: DingColors.dark()),
          )
        ],
      ),
    ] : type == 'enterAndExit' ? <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 7,
                height: 7,
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
                    fontSize: 16, color: DingColors.dark()),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 7,
                height: 7,
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
                    fontSize: 16, color: DingColors.dark()),
              )
            ],
          ),
        ],
      ),
      Row(
        children: [
          Icon(Icons.add,color: DingColors.primary(),),
          Text('نمایش جزءیات',style: TextStyle(fontSize: 15,color: DingColors.primary()),)
        ],
      )
    ] : <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 7,
                height: 7,
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
                    fontSize: 16, color: DingColors.dark()),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 7,
                height: 7,
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
                    fontSize: 16, color: DingColors.dark()),
              )
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'شروع',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Text(
            'پایان',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          )
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            beginDate ?? '',
            style: TextStyle(
                fontSize: 16, color: DingColors.dark()),
          ),
          Text(
            endDate ?? '',
            style: TextStyle(
                fontSize: 16, color: DingColors.dark()),
          )
        ],
      ),
    ];

    return Container(
      margin: EdgeInsets.only(top: 5),
      height: 230,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            width: 17,
            color: _typeColor(),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: NetworkImage(imgUrl ?? '')))),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name ?? '',
                              style: TextStyle(
                                  color: DingColors.dark(), fontSize: 16),
                            ),
                            Text(
                              unit ?? '',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        date ?? '',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: _typeDetail()
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 85,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(width: 1, color: DingColors.warning()),
                        ),
                        child: Icon(
                          Icons.close,
                          color: DingColors.warning(),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 85,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(width: 1, color: DingColors.primary()),
                        ),
                        child: Icon(
                          Icons.check,
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
