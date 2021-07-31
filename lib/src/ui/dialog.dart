import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';

class DingDialog extends StatelessWidget {
  String title;
  String buttonText;
  Function? onClick;
  DingDialog(
      {Key? key,
      this.title = 'title',
      this.buttonText = 'button text',
      this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Dialog(
        child: Container(
          padding: EdgeInsets.all(4.8.rw),
          height: 36.0.rh,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 2.2.rt, color: DingColors.dark()),
              ),
              GestureDetector(
                onTap: () {
                  onClick!();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 8.8.rh,
                  decoration: BoxDecoration(
                      border: Border.all(color: DingColors.dark(), width: 1),
                      borderRadius: BorderRadius.circular(100)),
                  child: Text(
                    buttonText,
                    style:
                        TextStyle(fontSize: 2.2.rt, color: DingColors.dark()),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
