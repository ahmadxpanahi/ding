import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {

  bool status = true;

  SwitchButton({Key? key}) : super(key: key);

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {

  void change() {
    setState(() {
      widget.status = !widget.status;
    });
  }

  @override
  Widget build(BuildContext context) => widget.status
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
                change();
              },
              child: Text(
                'سفارشی',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
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
                change();
              },
              child: Text(
                'ماهانه',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
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

}
