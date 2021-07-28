import 'package:ding/src/feature/account_management/bloc/ac_management_bloc.dart';
import 'package:ding/src/feature/account_management/bloc/ac_management_event.dart';
import 'package:ding/src/feature/account_management/bloc/ac_management_state.dart';
import 'package:ding/src/feature/account_management/widgets/management_item.dart';
import 'package:ding/src/feature/email_login/bloc/email_event.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountManagementScreen extends StatelessWidget {
  const AccountManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AccountManagementBloc(),
      child: AccountManagementContainer(),
    );
  }
}

class AccountManagementContainer extends StatefulWidget {
  const AccountManagementContainer({Key? key}) : super(key: key);

  @override
  _AccountManagementContainerState createState() =>
      _AccountManagementContainerState();
}

class _AccountManagementContainerState
    extends State<AccountManagementContainer> {
  late AccountManagementBloc _managementBloc;

  @override
  void initState() {
    super.initState();
    _managementBloc = BlocProvider.of<AccountManagementBloc>(context);
    _managementBloc.add(ShowAcManagementLoading(true));
    Future.delayed(Duration(milliseconds: 1500),(){
      _managementBloc.add(GetAcManagementData());
    });
  }

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
                          size: 3 * SizeConfig.heightMultiplier!,
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
          body: BlocBuilder(
            bloc: _managementBloc,
            builder: (_, state) {
              if (state is AcManagementLoadingState) {
                return Center(
                  child: CircularProgressIndicator(
                    color: DingColors.primary(),
                  ),
                );
              } else {
                return Stack(
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
                        margin: EdgeInsets.only(
                            bottom: 2.2 * SizeConfig.heightMultiplier!),
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
                );
              }
            },
          )),
    );
  }
}
