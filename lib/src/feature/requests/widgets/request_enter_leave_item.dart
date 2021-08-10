import 'package:ding/src/feature/requests/widgets/my_requests_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:swagger/api.dart' as api;

class RequestEnterLeaveItem extends StatelessWidget {
  api.RequestEnterLeave item;

  RequestEnterLeaveItem(this.item);

  @override
  Widget build(BuildContext context) => MyRequestsItem(
      key: Key(_key),
      info1: '',
      info2: '',
      date: DateTime.now(),
      type: 3,
      status: 1);

  String get _key {
    if(item is api.RequestDto) {
      return (item as api.RequestDto).id!.toString();
    }
    if(item is api.EnterLeaveDto) {
      return (item as api.RequestDto).id!.toString();
    }

    return "";
  }
}