import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

Widget switchButton(bool status,Function onTap) => status
    ? Container(
  decoration: BoxDecoration(
      color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
  child: Row(
    children: [
      Expanded(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white),
          child: Text(
            'ماهانه',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
      ),
      Expanded(
        child: Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              onTap();
            },
            child: Text(
              'سفارشی',
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
        ),
      ),
    ],
  ),
)
    : Container(
  decoration: BoxDecoration(
      color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
  child: Row(
    children: [
      Expanded(
        child: Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              onTap();
            },
            child: Text(
              'ماهانه',
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white),
          child: Text(
            'سفارشی',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
      ),
    ],
  ),
);

class DetailedItem extends StatefulWidget {
  const DetailedItem({Key? key}) : super(key: key);

  @override
  _DetailedItemState createState() => _DetailedItemState();
}

class _DetailedItemState extends State<DetailedItem> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: (){},
          title: Row(
            children: [
              Icon(Icons.arrow_back_ios,size: 30,color: Colors.grey,),
              Column(
                children: [
                  Text(
                    'جمع کارکرد',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.greenAccent),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    '08 : 25',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              Text(
                '${'05:42'} / ${'12:06'}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black),
              ),
              Container(
                margin: EdgeInsets.only(right: 5,left: 10,top: 5,bottom: 5),
                height: 100,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 3,color: Colors.greenAccent)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'شنبه 1',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                    Text(
                      'خرداد',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                    Text(
                      '1400',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}
