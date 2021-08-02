import 'package:ding/src/feature/requests/bloc/requests_bloc.dart';
import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateRequestTopBar extends StatefulWidget {

  CreateRequestTopBar({Key? key}) : super(key: key);
  @override
  _CreateRequestTopBarState createState() => _CreateRequestTopBarState();
}

class _CreateRequestTopBarState extends State<CreateRequestTopBar> {
  late RequestsBloc _requestsBloc;
  int type = 1;
  @override
  void initState() {
    super.initState();
    _requestsBloc = BlocProvider.of<RequestsBloc>(context);
  }

  Widget _buildBody() => Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _requestsBloc.add(UpdateRequestType(type: 1));
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 8.2.rh,
                color:
                    type == 1 ? DingColors.dark() : DingColors.light(),
                child: Text(
                  'مرخصی',
                  style: TextStyle(
                      fontSize: 2.73.rt,
                      color: type == 1
                          ? DingColors.primary()
                          : Colors.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _requestsBloc.add(UpdateRequestType(type: 2));
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 8.2.rh,
                color:
                    type == 2 ? DingColors.dark() : DingColors.light(),
                child: Text(
                  'ورود و خروج',
                  style: TextStyle(
                      fontSize: 2.73.rt,
                      color: type == 2
                          ? DingColors.primary()
                          : Colors.grey),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _requestsBloc.add(UpdateRequestType(type: 3));
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 8.2.rh,
                color:
                    type == 3 ? DingColors.dark() : DingColors.light(),
                child: Text(
                  'ماموریت',
                  style: TextStyle(
                      fontSize: 2.73.rt,
                      color: type == 3
                          ? DingColors.primary()
                          : Colors.grey),
                ),
              ),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return BlocListener<RequestsBloc, RequestsState>(
      listener: (_, state) {
        if (state is UpdateRequestsTypeState) {
          if (state.type == 1) {
            type = 1;
          } else if (state.type == 2) {
            type = 2;
          } else if (state.type == 3) {
            type = 3;
          }
        }
      },
      bloc: _requestsBloc,
      child: _buildBody(),
    );
  }
}
