import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/di/inject.dart';
import 'package:ding/src/feature/departures/bloc/departures_bloc.dart';
import 'package:ding/src/feature/departures/bloc/departures_event.dart';
import 'package:ding/src/feature/departures/bloc/departures_state.dart';
import 'package:ding/src/feature/departures/widgets/departures_pageview.dart';
import 'package:ding/src/feature/departures/widgets/device_page.dart';
import 'package:ding/src/feature/departures/widgets/enter_departures_screen.dart';
import 'package:ding/src/feature/departures/widgets/exit_departures_screen.dart';
import 'package:ding/src/feature/departures/widgets/location_page.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeparturesScreen extends StatelessWidget {
  const DeparturesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DeparturesBloc(inject(), inject()),
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

  PageView? _pageView;

  @override
  void initState() {
    super.initState();

    _controller = PageController();

    _departuresBloc = BlocProvider.of<DeparturesBloc>(context);

    Future.delayed(Duration.zero, () {
      setState(() {
        _pageView = PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller,
          onPageChanged: (i) {
            setState(() {
              value = i;
            });
          },
          children: [DevicePage(), LocationPage()],
        );
      });
    });
  }

  Widget _buildTabs() => Column(
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
                    height: 8.2.rh,
                    color: value == 0 ? DingColors.dark() : DingColors.light(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/device.svg',
                          width: 3.67.rh,
                          height: 3.67.rh,
                          color:
                              value == 0 ? DingColors.primary() : Colors.grey,
                        ),
                        SizedBox(
                          width: 3.0.rw,
                        ),
                        Text(
                          '????????????',
                          style: TextStyle(
                              fontSize: 2.73.rt,
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
                    height: 8.2.rh,
                    color: value == 1 ? DingColors.dark() : DingColors.light(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/location.svg',
                          width: 3.67.rh,
                          height: 3.67.rh,
                          color:
                              value == 1 ? DingColors.primary() : Colors.grey,
                        ),
                        SizedBox(
                          width: 3.0.rw,
                        ),
                        Text(
                          '????????????',
                          style: TextStyle(
                              fontSize: 2.73.rt,
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
          if (_pageView != null) Expanded(child: _pageView!),
        ],
      );

  Widget _buildLoadingLayer() => BlocBuilder<DeparturesBloc, DeparturesState>(
        bloc: _departuresBloc,
        buildWhen: (o, n) => !(n is DoDepartureError),
        builder: (_, state) {
          if (state is DeparturesStatusState) {
            return state.isEnter
                ? EnterDeparturesScreen(progress: state.progress)
                : ExitDeparturesScreen(progress: state.progress);
          }

          return SizedBox();
        },
      );

  Widget _buildBody() => Stack(
        children: [
          _buildTabs(),
          _buildLoadingLayer(),
        ],
      );

  @override
  Widget build(BuildContext context) =>
      BlocListener<DeparturesBloc, DeparturesState>(
        child: _buildBody(),
        bloc: _departuresBloc,
        listener: (_, state) {
          if (state is DeparturesStatusState) {
            if (_controller?.hasClients ?? false) {
              _controller?.animateToPage(value,
                  duration: Duration(milliseconds: 1500), curve: Curves.linear);
            }
          }
        },
      );
}
