import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtherDropdown extends StatefulWidget {
  const OtherDropdown({Key? key}) : super(key: key);

  @override
  _OtherDropdownState createState() => _OtherDropdownState();
}

class _OtherDropdownState extends State<OtherDropdown> {

  String dropdownValue = 'توسعه فناوی دینگ';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Expanded(
        child: DropdownButton(
          dropdownColor: Colors.grey,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>[
            'One',
            'Two',
            'Free',
            'توسعه فناوی دینگ',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            );
          }).toList(),
          style: TextStyle(color: Colors.white),
          value: dropdownValue,
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.arrow_drop_down,
                size: 40,
                color: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}