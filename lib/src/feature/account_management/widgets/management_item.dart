import 'package:ding/ui/colors.dart';
import 'package:ding/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ManagementItem extends StatelessWidget {
  bool active = true;
  String name;
  ManagementItem({Key? key, required this.name, required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.heightMultiplier! + 5),
      color: Colors.white,
      height: 16*SizeConfig.heightMultiplier!,
      child: Stack(
        children: [
          Opacity(
            opacity: active ? 1 : 0.3,
            child: Row(
              children: [
                SizedBox(
                  width: 4 * SizeConfig.widthMultiplier!,
                ),
                Container(
                  width: 11 * SizeConfig.heightMultiplier!,
                  height: 11 * SizeConfig.heightMultiplier!,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: DingColors.light(),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn1.iconfinder.com/data/icons/avatar-97/32/avatar-02-512.png'),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  width: 3.6 * SizeConfig.widthMultiplier!,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'توسعه ارتباطات دینگ',
                      style: TextStyle(
                          fontSize: 2.5 * SizeConfig.textMultiplier!,
                          color: DingColors.dark()),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 2.5 * SizeConfig.textMultiplier! - 5,
                          fontWeight: FontWeight.w300,
                          color: DingColors.dark()
                      ),
                    ),
                    Text(
                      active ? 'فعال' : 'غیر فعال',
                      style: TextStyle(
                          fontSize: 2.5 * SizeConfig.textMultiplier! - 5,
                          color: active ? DingColors.primary() : Colors.grey
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: SizeConfig.heightMultiplier! * 2.2,
            left: SizeConfig.widthMultiplier! * 3.6,
            child: Row(
              children: [
                Opacity(
                  opacity: active ? 1 : 0.3,
                  child: SvgPicture.asset(
                    'assets/images/trash2.svg',
                    width: 6.5 * SizeConfig.widthMultiplier!,
                    color: active ? DingColors.warning() : DingColors.dark(),
                  ),
                ),
                SizedBox(
                  width: 4 * SizeConfig.widthMultiplier!,
                ),
                Opacity(
                  opacity: active ? 1 : 0.3,
                  child: SvgPicture.asset(
                    'assets/images/edit.svg',
                    width: 6.5 * SizeConfig.widthMultiplier!,
                    color: DingColors.dark(),
                  ),
                ),
                SizedBox(
                  width: 4 * SizeConfig.widthMultiplier!,
                ),
                SvgPicture.asset(
                  active ? 'assets/images/log-out.svg' : 'assets/images/log-in.svg',
                  width: 6.5 * SizeConfig.widthMultiplier!,
                  color: active ? DingColors.dark() : DingColors.primary(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
