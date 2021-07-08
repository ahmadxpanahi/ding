import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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