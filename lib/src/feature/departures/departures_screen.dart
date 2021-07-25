import 'package:ding/src/feature/departures/bloc/departures_bloc.dart';
import 'package:ding/src/feature/departures/bloc/departures_state.dart';
import 'package:ding/src/feature/departures/widgets/device_page.dart';
import 'package:ding/src/feature/departures/widgets/enter_departures_screen.dart';
import 'package:ding/src/feature/departures/widgets/exit_departures_screen.dart';
import 'package:ding/src/feature/departures/widgets/location_page.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeparturesScreen extends StatelessWidget {
  const DeparturesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DeparturesBloc(),
      child: DeparturesContainer(),
    );
  }
}

class DeparturesContainer extends StatefulWidget {
  const DeparturesContainer({Key? key}) : super(key: key);

  @override
  _DeparturesContainerState createState() => _DeparturesContainerState();
}

class _DeparturesContainerState extends State<DeparturesContainer> {
  PageController? _controller;
  int value = 0;
  late DeparturesBloc _departuresBloc;
  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _departuresBloc = BlocProvider.of<DeparturesBloc>(context);
  }

  Widget _buildBody() => BlocBuilder(
        bloc: _departuresBloc,
        builder: (_, state) {
          if (state is DeparturesStatusState) {
            if (state.isEnter) {
              return EnterDeparturesScreen(progress: state.progress);
            } else {
              return ExitDeparturesScreen(progress: state.progress);
            }
          } else {
            return Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _controller!.animateToPage(0,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.linear);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 8.2 * SizeConfig.heightMultiplier!,
                          color: value == 0
                              ? DingColors.dark()
                              : DingColors.light(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/device.svg',
                                width: 3.67 * SizeConfig.heightMultiplier!,
                                height: 3.67 * SizeConfig.heightMultiplier!,
                                color: value == 0
                                    ? DingColors.primary()
                                    : Colors.grey,
                              ),
                              SizedBox(
                                width: 3 * SizeConfig.widthMultiplier!,
                              ),
                              Text(
                                'دستگاه',
                                style: TextStyle(
                                    fontSize: 2.73 * SizeConfig.textMultiplier!,
                                    color: value == 0
                                        ? DingColors.primary()
                                        : Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _controller!.animateToPage(1,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.linear);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 8.2 * SizeConfig.heightMultiplier!,
                          color: value == 1
                              ? DingColors.dark()
                              : DingColors.light(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/location.svg',
                                width: 3.67 * SizeConfig.heightMultiplier!,
                                height: 3.67 * SizeConfig.heightMultiplier!,
                                color: value == 1
                                    ? DingColors.primary()
                                    : Colors.grey,
                              ),
                              SizedBox(
                                width: 3 * SizeConfig.widthMultiplier!,
                              ),
                              Text(
                                'لوکیشن',
                                style: TextStyle(
                                    fontSize: 2.73 * SizeConfig.textMultiplier!,
                                    color: value == 1
                                        ? DingColors.primary()
                                        : Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: PageView(
                    controller: _controller,
                    onPageChanged: (val) {
                      setState(() {
                        value = val;
                      });
                    },
                    children: [DevicePage(), LocationPage()],
                  ),
                )
              ],
            );
          }
        },
      );

  @override
  Widget build(BuildContext context) => _buildBody();
}
