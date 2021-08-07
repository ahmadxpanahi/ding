import 'package:ding/src/di/inject.dart';
import 'package:ding/src/feature/create_request/create_request_screen.dart';
import 'package:ding/src/feature/requests/bloc/requests_bloc.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:ding/src/feature/requests/widgets/cartable_item.dart';
import 'package:ding/src/feature/requests/widgets/cartable_page.dart';
import 'package:ding/src/feature/requests/widgets/my_requests_item.dart';
import 'package:ding/src/feature/requests/widgets/my_requests_page.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagger/api.dart' as myRequests;
import 'bloc/requests_event.dart';

class RequestsScreen extends StatelessWidget {
  const RequestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RequestsBloc(inject(), inject()),
      child: RequestsContainer(),
    );
  }
}

class RequestsContainer extends StatefulWidget {
  const RequestsContainer({Key? key}) : super(key: key);

  @override
  _RequestsContainerState createState() => _RequestsContainerState();
}

class _RequestsContainerState extends State<RequestsContainer> {
  PageController? _controller;
  int value = 0;
  late RequestsBloc _requestsBloc;
  List<myRequests.GetRequestForViewDto>? myRequestsItem;

  @override
  void initState() {
    super.initState();
    _requestsBloc = BlocProvider.of<RequestsBloc>(context);
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {

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
                  height: 8.2.rh,
                  color: value == 0 ? DingColors.dark() : DingColors.light(),
                  child: Text(
                    'درخواست های من',
                    style: TextStyle(
                        fontSize: 2.73.rt,
                        color: value == 0 ? DingColors.primary() : Colors.grey),
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
                    'کارتابل',
                    style: TextStyle(
                        fontSize: 2.73.rt,
                        color: value == 1 ? DingColors.primary() : Colors.grey),
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
            MyRequestsPage(),
            CartablePage()
          ],
        ))
      ],
    );
  }
}
