import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_picker/flutter_picker.dart';

class TypePicker extends StatefulWidget {
  const TypePicker({Key? key}) : super(key: key);

  @override
  _TypePickerState createState() => _TypePickerState();
}

class _TypePickerState extends State<TypePicker> {
  String _type = 'بدون حقوق';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier! * 4),
      child: Row(
        children: [
          Text(
            'نوع',
            style: TextStyle(
                fontSize: 3.0.rh, color: Colors.grey),
          ),
          SizedBox(
            width: 6.5 .rw,
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () {
                Picker picker = new Picker(
                    adapter: PickerDataAdapter(
                        pickerdata: ['بدون حقوق', 'استحقاقی', 'استعلاجی']),
                    changeToFirst: true,
                    hideHeader: true,
                    textStyle: TextStyle(fontSize: SizeConfig.textMultiplier!*2.8,color: DingColors.dark()),
                    confirmTextStyle: TextStyle(fontSize: SizeConfig.textMultiplier!*2.8,color: DingColors.primary()),
                    cancel: SizedBox(),
                    textAlign: TextAlign.center,
                    confirmText: 'تایید',
                    onConfirm: (Picker picker, List value) {
                      setState(() {
                        switch(value.toString()){
                          case "[0]": _type = 'بدون حقوق';
                            break;
                          case "[1]": _type = 'استحقاقی';
                            break;
                          case "[2]": _type = 'استعلاجی';
                            break;
                        }
                      });
                    });
                picker.showDialog(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 2.0.rw),
                height: 8.8.rh,
                color: DingColors.veryLight(),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 2.2.rh,
                              horizontal: 4.8 .rw),
                          child: _type == null
                              ? Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 1,
                                    color: DingColors.dark(),
                                  ),
                                )
                              : Text(
                                  _type,
                                  style: TextStyle(
                                      fontSize: 3.0.rt),
                                  textAlign: TextAlign.center,
                                )),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 5.0.rh,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
