import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/di/inject.dart';
import 'package:ding/src/feature/create_request/create_request_screen.dart';
import 'package:ding/src/feature/requests/bloc/requests_bloc.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:ding/src/feature/requests/widgets/cartable_item.dart';
import 'package:ding/src/feature/requests/widgets/my_requests_item.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:ding/src/utils/extensions.dart';
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
    _requestsBloc.add(GetMyRequestsData());
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {


    Widget _myRequestsPage() => Stack(
      children: [
        BlocBuilder(
          bloc: _requestsBloc,
          builder: (_, state) {
            if (state is RequestsLoadingState){
              return Center(
                child: CircularProgressIndicator(
                  color: DingColors.primary(),
                ),
              );
            }else if(state is GetMyRequestsDataSuccess){
              return SingleChildScrollView(
                child: Column(
                  children: state.enterLeaveItems.map((e) => MyRequestsItem(
                      key: Key(e.enterLeave!.id.toString()),
                      info1: '',
                      info2: '',
                      date: e.enterLeave!.creationTime,
                      type: e.enterLeave!.enterLeaveType!.value!+6,
                      status: e.enterLeave!.status!.value!+6
                  ),).toList() + state.requestItems.map((e) => MyRequestsItem(
                    key: Key(e.request!.id.toString()),
                    date: e.request!.creationTime,
                    info1: '',
                    info2: '',
                    type: e.request!.requestType!.value,
                    status: e.request!.status!.value,
                  ),).toList(),
                ),
              );
            }
            return SizedBox();
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CreateRequestScreen())).then((value) => _requestsBloc.add(GetMyRequestsData()));
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 15),
              alignment: Alignment.center,
              height: 14.6.rw,
              width: 14.6.rw,
              decoration: BoxDecoration(
                color: DingColors.primary(),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                Icons.add,
                size: 12.0.rw,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
    Widget _cartablePage() => SingleChildScrollView(
      child: Column(
        children: [
          CartableItem(
            name: 'پژمان شفیعی',
            info2: 'استعلاجی',
            info1: 'مرخصی روزانه',
            type: 'leave',
            unit: 'واحد فروش',
            imgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbGv0MjXmTohr4qtlT2kRF6r4JlM1e-B32Lw02SvDeqS-zY8O8zl7l_WE-Cph1jot8Mag&usqp=CAU',
            beginDate: '23 خرداد 1398 - 23:10',
            date: '23 خرداد 1398 - 23:10',
            endDate: '23 خرداد 1398 - 23:10',
          ),
          CartableItem(
            name: 'پژمان شفیعی',
            info2: 'ورود/لوکیشن',
            info1: 'ورود و خروج',
            type: 'enterAndExit',
            unit: 'واحد فروش',
            imgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbGv0MjXmTohr4qtlT2kRF6r4JlM1e-B32Lw02SvDeqS-zY8O8zl7l_WE-Cph1jot8Mag&usqp=CAU',
            date: '23 خرداد 1398 - 23:10',
          ),
          CartableItem(
            name: 'پژمان شفیعی',
            info2: 'استعلاجی',
            info1: 'مرخصی روزانه',
            type: 'mission',
            unit: 'واحد فروش',
            imgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbGv0MjXmTohr4qtlT2kRF6r4JlM1e-B32Lw02SvDeqS-zY8O8zl7l_WE-Cph1jot8Mag&usqp=CAU',
            beginDate: '23 خرداد 1398 - 23:10',
            date: '23 خرداد 1398 - 23:10',
            endDate: '23 خرداد 1398 - 23:10',
          ),
        ],
      ),
    );

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
            _myRequestsPage(),
            BlocBuilder(
              bloc: _requestsBloc,
              builder: (_, state) {
                if (state is RequestsLoadingState)
                  return Center(
                    child: CircularProgressIndicator(
                      color: DingColors.primary(),
                    ),
                  );
                else {
                  return _cartablePage();
                }
              },
            )
          ],
        ))
      ],
    );
  }
}
