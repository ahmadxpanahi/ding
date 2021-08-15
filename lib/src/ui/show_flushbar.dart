import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'colors.dart';

void showFlushBar(context,message){
  Future.delayed(Duration.zero, () async {
              await Flushbar(
                backgroundColor: DingColors.warning(),
                duration: Duration(seconds: 1),
                borderRadius: BorderRadius.circular(100),
                padding: EdgeInsets.all(15),
                message: message,
                flushbarPosition: FlushbarPosition.TOP,
              ).show(context);
            });
}