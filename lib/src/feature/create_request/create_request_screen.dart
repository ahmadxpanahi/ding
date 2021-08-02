import 'package:ding/src/feature/create_request/widgets/daily_page.dart';
import 'package:ding/src/feature/create_request/widgets/hourly_page.dart';
import 'package:ding/src/feature/create_request/widgets/top_buttons.dart';
import 'package:ding/src/feature/requests/bloc/requests_bloc.dart';
import 'package:ding/src/feature/requests/bloc/requests_event.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';
import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateRequestScreen extends StatelessWidget {
  const CreateRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RequestsBloc>(
      create: (_) => RequestsBloc(),
      child: CreateRequestContainer(),
    );
  }
}

class CreateRequestContainer extends StatefulWidget {
  const CreateRequestContainer({Key? key}) : super(key: key);

  @override
  _CreateRequestContainerState createState() => _CreateRequestContainerState();
}

class _CreateRequestContainerState extends State<CreateRequestContainer> {
  PageController? _controller;
  int pageValue = 0;
  late RequestsBloc _requestsBloc;
  @override
  void initState() {
    super.initState();
    _requestsBloc = BlocProvider.of<RequestsBloc>(context);
    _requestsBloc.add(UpdateRequestType(type: 1));
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          padding: EdgeInsets.only(top: 2.2.rh),
          alignment: Alignment.center,
          color: DingColors.primary(),
          height: 13.3.rh,
          child: Row(
            children: [
              Expanded(
                  child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 2.4.rw),
                  child: IconButton(
                    color: Colors.white,
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 3 * SizeConfig.heightMultiplier!,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              )),
              Text(
                'ثبت درخواست',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 2.73.rt, color: Colors.white),
              ),
              Expanded(child: SizedBox())
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          CreateRequestTopBar(),
          Container(
            height: 1.1.rh,
            color: DingColors.light(),
          ),
          Container(
            height: 7.5.rh,
            color: DingColors.light(),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        pageValue = 0;
                        _controller!.animateToPage(0,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.linear);
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      color: pageValue == 0 ? Colors.white : Colors.transparent,
                      child: Text(
                        'روزانه',
                        style: TextStyle(
                            fontSize: 2.5.rt,
                            color: pageValue == 0 ? Colors.black : Colors.grey),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        pageValue = 1;
                        _controller!.animateToPage(1,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.linear);
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      color: pageValue == 1 ? Colors.white : Colors.transparent,
                      child: Text(
                        'ساعتی',
                        style: TextStyle(
                            fontSize: 2.5.rt,
                            color: pageValue == 1 ? Colors.black : Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
              child: PageView(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                pageValue = value;
              });
            },
            children: [
              DailyPage(),
              HourlyPage(),
            ],
          )
          )
        ],
      ),
    );
  }
}
