import 'dart:convert';

import 'package:ding/src/ui/size_config.dart';

extension DoubleExt on double {
  double get rt {
    return this * SizeConfig.textMultiplier!;
  }

  double get rw {
    return this * SizeConfig.widthMultiplier!;
  }

  double get rh {
    return this * SizeConfig.heightMultiplier!;
  }
}

extension IntExt on int {
  String get timePadded {
    if (this.toString().length == 1) {
      return this.toString().padLeft(2, '0');
    } else {
      return this.toString();
    }
  }
}
extension StringExt on String {
  String get dingError {
    try {
      Map errorMap = json.decode(this);
      return errorMap['error']['message'].toString();
    } on Exception catch (_) {}

    return "Unknown!";
  }
}
