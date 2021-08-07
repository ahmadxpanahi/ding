import 'package:ding/src/feature/create_request/create_request_screen.dart';
import 'package:ding/src/feature/requests/bloc/requests_bloc.dart';
import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ding/src/utils/extensions.dart';
import 'my_requests_item.dart';

class MyRequestsPage extends StatefulWidget {
  const MyRequestsPage({Key? key}) : super(key: key);

  @override
  _MyRequestsPageState createState() => _MyRequestsPageState();
}

class _MyRequestsPageState extends State<MyRequestsPage> {

  late RequestsBloc _requestsBloc;

  @override
  void initState() {
    super.initState();
    _requestsBloc = BlocProvider.of<RequestsBloc>(context);
    _requestsBloc.add(GetRequestsData(false));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            }else if(state is GetRequestsDataSuccess){
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
                          CreateRequestScreen())).then((value) => _requestsBloc.add(GetRequestsData(false)));
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
  }
}
