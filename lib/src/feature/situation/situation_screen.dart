import 'package:ding/src/feature/situation/bloc/situation_bloc.dart';
import 'package:ding/src/feature/situation/bloc/situation_event.dart';
import 'package:ding/src/feature/situation/bloc/situation_state.dart';
import 'package:ding/src/feature/situation/widgets/employee_item.dart';
import 'package:ding/src/feature/situation/widgets/other_employee.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ding/src/utils/extensions.dart';

class SituationScreen extends StatelessWidget {
  const SituationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SituationBloc(),
      child: SituationContainer(),
    );
  }
}

class SituationContainer extends StatefulWidget {
  const SituationContainer({Key? key}) : super(key: key);

  @override
  _SituationContainerState createState() => _SituationContainerState();
}

class _SituationContainerState extends State<SituationContainer> {
  late SituationBloc _situationBloc;
  @override
  void initState() {
    super.initState();
    _situationBloc = BlocProvider.of<SituationBloc>(context);
    _situationBloc.add(ShowSituationLoading(true));
    Future.delayed(Duration(milliseconds: 1500), () {
      _situationBloc.add(GetSituationData());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _situationBloc,
        builder: (_, state) {
          if (state is SituationLoadingState) {
            return Center(
              child: CircularProgressIndicator(
                color: DingColors.primary(),
              ),
            );
          } else {
            return Container(
              padding: EdgeInsets.only(top: 5),
              color: Colors.grey[100],
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    EmployeeItem(
                      status: 'present',
                      imgUrl:
                          'https://image.flaticon.com/icons/png/512/147/147140.png',
                      name: 'پژمان شفیعی',
                      unit: 'واحد فروش',
                    ),
                    EmployeeItem(
                      status: 'absent',
                      imgUrl:
                          'https://image.flaticon.com/icons/png/512/147/147140.png',
                      name: 'پژمان شفیعی',
                      unit: 'واحد تحقیق و توسعه',
                      reason: '--:--',
                    ),
                    EmployeeItem(
                      status: '',
                      imgUrl:
                          'https://image.flaticon.com/icons/png/512/147/147140.png',
                      name: 'پژمان شفیعی',
                      unit: 'واحد فروش',
                      reason: '--:--',
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'سایر کارمندان',
                            style: TextStyle(
                                fontSize: SizeConfig.heightMultiplier! < 6
                                    ? 4.5.rw
                                    : 5.0.rw,
                                fontWeight: FontWeight.bold),
                          ),
                          Divider(),
                          OtherEmployee(
                            imgUrl:
                                'https://image.flaticon.com/icons/png/512/147/147140.png',
                            name: 'پدرام یوسفی',
                            unit: 'واحد فروش',
                            reason: 'مرخصی',
                          ),
                          OtherEmployee(
                            imgUrl:
                                'https://image.flaticon.com/icons/png/512/147/147140.png',
                            name: 'پدرام یوسفی',
                            unit: 'واحد فروش',
                            reason: 'بدون شیفت',
                          ),
                          OtherEmployee(
                            imgUrl:
                                'https://image.flaticon.com/icons/png/512/147/147140.png',
                            name: 'پدرام یوسفی',
                            unit: 'واحد فروش',
                            reason: 'مرخصی',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        });
  }
}
