import 'package:ding/src/di/inject.dart';
import 'package:ding/src/feature/requests/bloc/requests_bloc.dart';
import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cartable_item.dart';

class CartablePage extends StatefulWidget {
  const CartablePage({Key? key}) : super(key: key);

  @override
  _CartablePageState createState() => _CartablePageState();
}

class _CartablePageState extends State<CartablePage> {
  late RequestsBloc _requestsBloc;
  @override
  void initState() {
    super.initState();
    _requestsBloc = BlocProvider.of<RequestsBloc>(context);
    _requestsBloc.add(GetRequestsData(true));
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequestsBloc,RequestsState>(
      bloc: _requestsBloc,
      builder: (_,state){
        if(state is RequestsLoadingState){
          return Center(child: CircularProgressIndicator(color: DingColors.primary(),),);
        }else if(state is GetRequestsDataSuccess){
          return SingleChildScrollView(
            child: Column(
                children: state.enterLeaveItems.map((e) => CartableItem(
                  key: Key(e.enterLeave!.id.toString()),
                  name: e.requestByUser,
                  date: e.enterLeave?.creationTime.toString(),
                  info1: '',
                  info2: '',
                  type: e.enterLeave?.enterLeaveType?.value,
                  imgUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxoBnq05850hAXAOcv0CciJtz3dASMTGcBQY38EssxzZkD7mpDlgUj1HUlhHaFJlo5gEk&usqp=CAU',
                  unit: 'واحد فروش',
                ),).toList()+state.requestItems.map((e) => CartableItem(
                  key: Key(e.request!.id.toString()),
                  name: e.requestByUser,
                  unit: e.substituteUser,
                  info2: '',
                  info1: '',
                  date: e.request!.creationTime.toString(),
                  type: e.request?.requestType?.value,
                  imgUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxoBnq05850hAXAOcv0CciJtz3dASMTGcBQY38EssxzZkD7mpDlgUj1HUlhHaFJlo5gEk&usqp=CAU',
                  beginDate: e.request?.from.toString(),
                  endDate: e.request?.to.toString(),
                ),).toList()
            ),
          );
        }else{
          return SizedBox();
        }
      },
    );
  }
}
