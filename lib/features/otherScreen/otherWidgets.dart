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
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>[
            'One',
            'Two',
            'Free',
            'Four',
            'توسعه فناوی دینگ',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            );
          }).toList(),
          style: TextStyle(color: Colors.white),
          value: dropdownValue,
          icon: const Icon(
            Icons.arrow_drop_down,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

Widget optionsTile(String title, IconData icon) => Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 15),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.greenAccent,
                size: 33,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
        ),
        Divider()
      ],
    );
