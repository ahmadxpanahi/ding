import 'package:another_flushbar/flushbar.dart';
import 'package:ding/src/di/inject.dart';
import 'package:ding/src/feature/requests/bloc/requests_bloc.dart';
import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagger/api.dart' as api;
import 'package:ding/src/utils/extensions.dart';
import 'cartable_item.dart';

class CartablePage extends StatefulWidget {
  const CartablePage({Key? key}) : super(key: key);

  @override
  _CartablePageState createState() => _CartablePageState();
}

class _CartablePageState extends State<CartablePage> {
  List<api.RequestEnterLeave> _items = [];

  late RequestsBloc _requestsBloc;

  @override
  void initState() {
    super.initState();

    _requestsBloc = BlocProvider.of<RequestsBloc>(context);
    _requestsBloc.add(GetRequestsData(true));
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

  Widget _buildBody() => Stack(
        children: [
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
                        .map((e) => CartableItem(
                              key: Key(e.getId()),
                              requestId: 1,
                              name: "e.requestByUser",
                              date: e.getDate().toString(),
                              info1: '',
                              info2: '',
                              type: e.getType(),
                              unit: 'واحد فروش',
                            ))
                        .toList(),
                  ),
                )
        ],
      );

  @override
  Widget build(BuildContext context) =>
      BlocListener<RequestsBloc, RequestsState>(
        bloc: _requestsBloc,
        child: _buildBody(),
        listener: (_, state) {
          if (state is GetRequestsDataSuccess) {
            if (state.cartable!) {
              setState(() {
                _items = [...state.requestItems, ...state.enterLeaveItems]
                  ..sort((a, b) {
                    var aDate = a.getDate();
                    var bDate = b.getDate();
                    return -aDate.compareTo(bDate);
                  });
              });
            }
          } else if (state is RequestsErrorState) {
            Future.delayed(Duration.zero, () async {
              await Flushbar(
                backgroundColor: DingColors.warning(),
                duration: Duration(seconds: 2),
                borderRadius: BorderRadius.circular(100),
                padding: EdgeInsets.all(15),
                message: state.message,
                flushbarPosition: FlushbarPosition.TOP,
              ).show(context);
            });
          } else if (state is ActionButtonErrorState) {
            Future.delayed(Duration.zero, () async {
              await Flushbar(
                backgroundColor: DingColors.warning(),
                duration: Duration(seconds: 2),
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
