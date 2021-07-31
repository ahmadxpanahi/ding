import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';

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
