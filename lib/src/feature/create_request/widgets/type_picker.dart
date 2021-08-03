import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_picker/flutter_picker.dart';

class TypePicker extends StatefulWidget {
  int type;
  EdgeInsets labelPadding;
  List<String> vacationOptions;
  List<String> enterLeaveOptions;
  Function(int)? getRequestType;
  TypePicker({
    Key? key,
    this.type = 1,
    this.labelPadding = EdgeInsets.zero,
    this.vacationOptions = const [],
    this.enterLeaveOptions = const [],
    this.getRequestType
  }) : super(key: key);

  @override
  _TypePickerState createState() => _TypePickerState();
}

class _TypePickerState extends State<TypePicker> {
  String? _typeTxt;
  @override
  void initState() {
    super.initState();
  }

  Widget _buildBody() => Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier! * 4),
        child: Row(
          children: [
            Text(
              'نوع',
              style: TextStyle(fontSize: 3.0.rh, color: Colors.grey),
            ),
            SizedBox(
              width: 6.5.rw,
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  Picker picker = new Picker(
                      adapter: PickerDataAdapter(
                        pickerdata: widget.type == 1
                            ? widget.vacationOptions
                            : widget.enterLeaveOptions,
                      ),
                      changeToFirst: true,
                      hideHeader: true,
                      textStyle: TextStyle(
                          fontSize: SizeConfig.textMultiplier! * 2.8,
                          color: DingColors.dark()),
                      confirmTextStyle: TextStyle(
                          fontSize: SizeConfig.textMultiplier! * 2.8,
                          color: DingColors.primary()),
                      cancel: SizedBox(),
                      textAlign: TextAlign.center,
                      confirmText: 'تایید',
                      onConfirm: (Picker picker, List value) {
                        widget.getRequestType!(value.first+1);
                        setState(() {
                          switch (value.first) {
                            case 0:
                              _typeTxt = widget.type == 1
                                  ? widget.vacationOptions[0]
                                  : widget.enterLeaveOptions[0];
                              break;
                            case 1:
                              _typeTxt = widget.type == 1
                                  ? widget.vacationOptions[1]
                                  : widget.enterLeaveOptions[1];
                              break;
                            case 2:
                              _typeTxt = widget.vacationOptions[2];
                              break;
                            case 3:
                              _typeTxt = widget.vacationOptions[3];
                              break;
                            case 4:
                              _typeTxt = widget.vacationOptions[4];
                              break;
                          }
                        });
                      });
                  picker.showDialog(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.0.rw),
                  margin: widget.labelPadding,
                  height: 7.5.rh,
                  color: DingColors.veryLight(),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 1.5.rh, horizontal: 4.8.rw),
                            child: _typeTxt == null
                                ? Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 1,
                                      color: Colors.grey,
                                    ),
                                  )
                                : Text(
                                    _typeTxt ?? '',
                                    style: TextStyle(fontSize: 5.0.rw),
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

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}
