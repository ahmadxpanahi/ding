import 'package:ding/src/feature/account_management/widgets/management_item.dart';
import 'package:ding/ui/colors.dart';
import 'package:ding/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountManagementScreen extends StatefulWidget {
  const AccountManagementScreen({Key? key}) : super(key: key);

  @override
  _AccountManagementScreenState createState() =>
      _AccountManagementScreenState();
}

class _AccountManagementScreenState extends State<AccountManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
            padding: EdgeInsets.only(top: 2.2 * SizeConfig.heightMultiplier!),
            alignment: Alignment.center,
            color: DingColors.primary(),
            height: 13.3 * SizeConfig.heightMultiplier!,
            child: Row(
              children: [
                Expanded(
                    child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: 2.4 * SizeConfig.widthMultiplier!),
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 3*SizeConfig.heightMultiplier!,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                )),
                Text(
                  'مدیریت حساب',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 2.73 * SizeConfig.textMultiplier!,
                      color: Colors.white),
                ),
                Expanded(child: SizedBox())
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ManagementItem(
                    name: 'پژمان شفیعی',
                    active: true,
                  ),
                  ManagementItem(
                    name: 'پژمان شفیعی',
                    active: false,
                  ),
                  ManagementItem(
                    name: 'پژمان شفیعی',
                    active: false,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin:
                    EdgeInsets.only(bottom: 2.2 * SizeConfig.heightMultiplier!),
                alignment: Alignment.center,
                height: 14.6 * SizeConfig.widthMultiplier!,
                width: 14.6 * SizeConfig.widthMultiplier!,
                decoration: BoxDecoration(
                  color: DingColors.primary(),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  Icons.add,
                  size: 12 * SizeConfig.widthMultiplier!,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
