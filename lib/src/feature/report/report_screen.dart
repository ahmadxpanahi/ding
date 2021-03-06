import 'package:another_flushbar/flushbar.dart';
import 'package:ding/src/di/inject.dart';
import 'package:ding/src/feature/detailed_report/detailed_report_screen.dart';
import 'package:ding/src/feature/report/bloc/report_bloc.dart';
import 'package:ding/src/feature/report/widgets/customReportPage.dart';
import 'package:ding/src/feature/report/widgets/monthlyReportPage.dart';
import 'package:ding/src/feature/summary_report/summary_report_screen.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/report_state.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ReportBloc(
        inject(),
        inject(),
        inject(),
        inject(),
      ),
      child: ReportContainer(),
    );
  }
}

class ReportContainer extends StatefulWidget {
  const ReportContainer({Key? key}) : super(key: key);

  @override
  _ReportContainerState createState() => _ReportContainerState();
}

class _ReportContainerState extends State<ReportContainer> {
  PageController? _controller;
  int value = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  Widget _buildBody() => Column(
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
                    child: Text(
                      '????????????',
                      style: TextStyle(
                          fontSize: 2.73.rt,
                          color:
                              value == 0 ? DingColors.primary() : Colors.grey),
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
                    child: Text(
                      '????????????',
                      style: TextStyle(
                          fontSize: 2.73.rt,
                          color:
                              value == 1 ? DingColors.primary() : Colors.grey),
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
            children: [
              MonthlyReportPage(),
              CustomReportPage(),
            ],
          ))
        ],
      );

  @override
  Widget build(BuildContext context) => BlocListener<ReportBloc, ReportState>(
        child: _buildBody(),
        listener: (_, state) {
          if (state is DetailedReportsFetched) {
            if (state.items.length > 0)
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailedReportScreen(state.items)));
          } else if (state is SummaryReportsFetched) {
            if (state.items.length > 0)
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SummaryReportScreen(
                          state.items.first.summaryEmployeeReport!)));
          } else if (state is ReportErrorState) {
            Future.delayed(Duration.zero, () async {
              await Flushbar(
                backgroundColor: DingColors.warning(),
                duration: Duration(seconds: 1),
                borderRadius: BorderRadius.circular(100),
                padding: EdgeInsets.all(15),
                message: state.message,
                flushbarPosition: FlushbarPosition.TOP,
              ).show(context);
            });
          }
        },
      );
}
