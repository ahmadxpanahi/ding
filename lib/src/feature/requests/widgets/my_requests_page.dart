import 'package:ding/src/core/logger/logger.dart';
import 'package:ding/src/feature/create_request/create_request_screen.dart';
import 'package:ding/src/feature/requests/bloc/requests_bloc.dart';
import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:swagger/api.dart' as api;
import 'my_requests_item.dart';

class MyRequestsPage extends StatefulWidget {
  const MyRequestsPage({Key? key}) : super(key: key);

  @override
  _MyRequestsPageState createState() => _MyRequestsPageState();
}

class _MyRequestsPageState extends State<MyRequestsPage> {
  List<api.RequestEnterLeave> _items = [];
  List<api.GetRequestForViewDto> _requestItems = [];
  List<api.GetEnterLeaveForViewDto> _enterLeaveItems = [];

  late RequestsBloc _requestsBloc;

  @override
  void initState() {
    super.initState();
    _requestsBloc = BlocProvider.of<RequestsBloc>(context);
    _requestsBloc.add(GetRequestsData(false));
    sort();
  }

  List<Widget> allRequests = [];

  void sort() {
    _enterLeaveItems.sort((a, b) {
      var aDate = a.enterLeave!.creationTime;
      var bDate = b.enterLeave!.creationTime;
      return -aDate!.compareTo(bDate!);
    });
    _requestItems.sort((a, b) {
      var aDate = a.request!.creationTime;
      var bDate = b.request!.creationTime;
      return -aDate!.compareTo(bDate!);
    });
  }

  Widget _buildLoading() => BlocBuilder<RequestsBloc, RequestsState>(
      bloc: _requestsBloc,
      builder: (_, state) {
        if (state is RequestsLoadingState) {
          return Container(
            color: Colors.white,
            child: Center(
              child: CircularProgressIndicator(
                color: DingColors.primary(),
              ),
            ),
          );
        }
        return SizedBox();
      });

  Widget _buildBody() => Stack(children: [
        _items.length < 1
            ? Center(
                child: Text(
                  'هیچ آیتمی برای نمایش وجود ندارد.',
                  style: TextStyle(fontSize: 3.5.rw),
                ),
              )
            : SingleChildScrollView(
                child: Column(
                  children: _items
                      .map(
                        (e) => MyRequestsItem(
                          key: Key(e.getId()),
                          info1: '',
                          info2: '',
                          date: e.getDate(),
                          type: e.getType(),
                          status: e.getStatus(),
                        ),
                      )
                      .toList(),
                ),
              ),
        Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateRequestScreen()))
                  .then((value) => _requestsBloc.add(GetRequestsData(false)));
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
        ),
        _buildLoading(),
      ]);

  @override
  Widget build(BuildContext context) =>
      BlocListener<RequestsBloc, RequestsState>(
        bloc: _requestsBloc,
        child: _buildBody(),
        listener: (_, state) {
          if (state is GetRequestsDataSuccess) {
            if (!state.cartable!) {
              setState(() {
                _requestItems = state.requestItems;
                _enterLeaveItems = state.enterLeaveItems;
                _items = [...state.requestItems, ...state.enterLeaveItems];
                Log.wtf("_requestItems(${_requestItems.length}) --- _enterLeaveItems(${_enterLeaveItems.length}) --- _items(${_items.length})");
              });
            }
          }
        },
      );
}
