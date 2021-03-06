import 'package:ding/src/feature/requests/bloc/requests_bloc.dart';
import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/feature/requests/bloc/requests_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class CartableItem extends StatefulWidget {
  int? userId;
  String? name;
  String? unit;
  String? date;
  String? beginDate;
  String? endDate;
  int? type;
  String? info1;
  String? info2;
  int? requestId;

  CartableItem(
      {Key? key,
      this.userId,
      this.type,
      this.info2,
      this.info1,
      this.date,
      this.unit,
      this.name,
      this.requestId,
      this.endDate,
      this.beginDate})
      : super(key: key);

  @override
  _CartableItemState createState() => _CartableItemState();
}

class _CartableItemState extends State<CartableItem> {
  late RequestsBloc _requestsBloc;

  @override
  void initState() {
    super.initState();

    _requestsBloc = BlocProvider.of<RequestsBloc>(context);
    _requestsBloc.add(LoadImage(key, widget.userId ?? -1));
  }

  int get key {
    return int.parse(widget.key.toString());
  }

  Widget _actionButtons() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              _requestsBloc
                  .add(RejectRequest(widget.requestId ?? 1, _inEnterLeave()));
            },
            child: Container(
              width: 20.7.rw,
              height: 5.47.rh,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 1, color: DingColors.warning()),
              ),
              child: Icon(
                Icons.close,
                size: 6.0.rw,
                color: DingColors.warning(),
              ),
            ),
          ),
          SizedBox(
            width: 2.4.rw,
          ),
          GestureDetector(
            onTap: () {
              _requestsBloc
                  .add(AcceptRequest(widget.requestId ?? 1, _inEnterLeave()));
            },
            child: Container(
              width: 20.7.rw,
              height: 5.47.rh,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 1, color: DingColors.primary()),
              ),
              child: Icon(
                Icons.check,
                size: 6.0.rw,
                color: DingColors.primary(),
              ),
            ),
          ),
        ],
      );
  bool _inEnterLeave() => widget.type == 2 ? true : false;
  @override
  Widget build(BuildContext context) {
    String _date = widget.date.toString().toPersianDigit();
    String _beginDate = widget.beginDate.toString().toPersianDigit();
    String _endDate = widget.endDate.toString().toPersianDigit();

    String? _type() {
      if (widget.type == 1) {
        return 'leave';
      } else if (widget.type == 2) {
        return 'enterAndExit';
      } else if (widget.type == 3) {
        return 'mission';
      }
    }

    Color _typeColor() => _type() == 'leave'
        ? DingColors.secondary()
        : _type() == 'enterAndExit'
            ? DingColors.primary()
            : Colors.grey;

    _buildAvatar() => BlocBuilder<RequestsBloc, RequestsState>(
          bloc: _requestsBloc,
          buildWhen: (o, n) => n is ImageLoaded,
          builder: (_, state) {
            if (state is ImageLoaded) {
              //if widget was alive (mounted) AND state id was the same as current widget
              if (mounted && state.id == key) {
                return Container(
                  width: SizeConfig.heightMultiplier! < 6 ? 12.5.rw : 14.6.rw,
                  height: 14.6.rw,
                  decoration: BoxDecoration(
                    color: DingColors.light(),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: MemoryImage(state.imageBytes),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              }
            }

            return Container(
              width: SizeConfig.heightMultiplier! < 6 ? 12.5.rw : 14.6.rw,
              height: 14.6.rw,
              decoration: BoxDecoration(
                color: DingColors.light(),
                shape: BoxShape.circle,
              ),
            );
          },
        );

    Widget _typeDetail() => _type() == 'leave'
        ? Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '????????',
                    style: TextStyle(
                        fontSize:
                            SizeConfig.heightMultiplier! < 6 ? 3.5.rw : 4.0.rw,
                        color: Colors.grey),
                  ),
                  Text(
                    '??????????',
                    style: TextStyle(
                        fontSize:
                            SizeConfig.heightMultiplier! < 6 ? 3.5.rw : 4.0.rw,
                        color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                width: 5.0.rw,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _beginDate,
                    style: TextStyle(
                        fontSize:
                            SizeConfig.heightMultiplier! < 6 ? 3.5.rw : 4.0.rw,
                        color: DingColors.dark()),
                  ),
                  Text(
                    _endDate,
                    style: TextStyle(
                        fontSize:
                            SizeConfig.heightMultiplier! < 6 ? 3.5.rw : 4.0.rw,
                        color: DingColors.dark()),
                  )
                ],
              ),
            ],
          )
        : _type() == 'enterAndExit'
            ? Row(
                children: [
                  Icon(
                    Icons.add,
                    color: DingColors.primary(),
                  ),
                  Text(
                    '?????????? ????????????',
                    style: TextStyle(
                        fontSize:
                            SizeConfig.heightMultiplier! < 6 ? 3.5.rw : 4.0.rw,
                        color: DingColors.primary()),
                  )
                ],
              )
            : Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '????????',
                        style: TextStyle(
                            fontSize: SizeConfig.heightMultiplier! < 6
                                ? 3.5.rw
                                : 4.0.rw,
                            color: Colors.grey),
                      ),
                      Text(
                        '??????????',
                        style: TextStyle(
                            fontSize: SizeConfig.heightMultiplier! < 6
                                ? 3.5.rw
                                : 4.0.rw,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5.0.rw,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _beginDate,
                        style: TextStyle(
                            fontSize: SizeConfig.heightMultiplier! < 6
                                ? 3.5.rw
                                : 4.0.rw,
                            color: DingColors.dark()),
                      ),
                      Text(
                        _endDate,
                        style: TextStyle(
                            fontSize: SizeConfig.heightMultiplier! < 6
                                ? 3.5.rw
                                : 4.0.rw,
                            color: DingColors.dark()),
                      )
                    ],
                  ),
                ],
              );

    return Container(
      margin: EdgeInsets.only(top: 5),
      height: 33.8.rh,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            width: 4.1.rw,
            color: _typeColor(),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.4.rw),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildAvatar(),
                      SizedBox(
                        width: 2.4.rw,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name ?? '',
                              style: TextStyle(
                                  color: DingColors.dark(),
                                  fontSize: SizeConfig.heightMultiplier! < 6
                                      ? 3.5.rw
                                      : 4.0.rw),
                            ),
                            Text(
                              widget.unit ?? '',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: SizeConfig.heightMultiplier! < 6
                                      ? 3.1.rw
                                      : 4.0.rw),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        _date,
                        style:
                            TextStyle(color: Colors.grey, fontSize: 4.0.rw - 2),
                      )
                    ],
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 3 + SizeConfig.widthMultiplier!,
                                  height: 3 + SizeConfig.widthMultiplier!,
                                  decoration: BoxDecoration(
                                      color: _typeColor(),
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  widget.info1 ?? '',
                                  style: TextStyle(
                                      fontSize: SizeConfig.heightMultiplier! < 6
                                          ? 3.5.rw
                                          : 4.0.rw,
                                      color: DingColors.dark()),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 3 + SizeConfig.widthMultiplier!,
                                  height: 3 + SizeConfig.widthMultiplier!,
                                  decoration: BoxDecoration(
                                      color: _typeColor(),
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  widget.info2 ?? '',
                                  style: TextStyle(
                                      fontSize: SizeConfig.heightMultiplier! < 6
                                          ? 3.5.rw
                                          : 4.0.rw,
                                      color: DingColors.dark()),
                                )
                              ],
                            ),
                          ],
                        ),
                        _typeDetail()
                      ]),
                  BlocBuilder(
                    bloc: _requestsBloc,
                    builder: (_, state) {
                      if (state is ActionButtonLoadingState) {
                        if (state.id == widget.requestId) {
                          return Transform.scale(
                              scale: SizeConfig.heightMultiplier! < 6 ? 0.6 : 1,
                              child: CircularProgressIndicator(
                                color: DingColors.primary(),
                              ));
                        } else {
                          return _actionButtons();
                        }
                      } else {
                        return _actionButtons();
                      }
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
