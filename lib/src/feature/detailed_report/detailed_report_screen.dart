import 'package:ding/src/feature/detailed_report/bloc/de_report_bloc.dart';
import 'package:ding/src/feature/detailed_report/bloc/de_report_event.dart';
import 'package:ding/src/feature/detailed_report/bloc/de_report_state.dart';
import 'package:ding/src/ui/colors.dart';
import 'package:ding/src/ui/size_config.dart';import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailedReportScreen extends StatelessWidget {
  const DetailedReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DetailedReportBloc(),
      child: DetailedReportContainer(),
    );
  }
}

class DetailedReportContainer extends StatefulWidget {
  const DetailedReportContainer({Key? key}) : super(key: key);

  @override
  _DetailedReportContainerState createState() =>
      _DetailedReportContainerState();
}

class _DetailedReportContainerState extends State<DetailedReportContainer> {
  late DetailedReportBloc _detailedReportBloc;

  Widget _infoContainer() => Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier! * 4.5),
            height: 15.0.rh,
            child: Row(
              children: [
                Container(
                  width: 8.0.rh,
                  height: 8.0.rh,
                  decoration: BoxDecoration(
                      color: DingColors.light(),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn1.iconfinder.com/data/icons/avatar-97/32/avatar-02-512.png'),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'پژمان شفیعی',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      'توسعه ارتباطات دینگ',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      'واحد فروش',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w200),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier! * 4.5,
                vertical: SizeConfig.heightMultiplier!),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'شروع',
                      style: TextStyle(
                          fontSize: 2.2.rt + 1,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier! * 3,
                    ),
                    Text(
                      '02 خرداد 1398',
                      style: TextStyle(
                          fontSize: 2.2.rt + 1,
                          color: DingColors.dark()),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'پایان',
                      style: TextStyle(
                          fontSize: 2.2.rt + 1,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier! * 3,
                    ),
                    Text(
                      '02 خرداد 1398',
                      style: TextStyle(
                          fontSize: 2.2.rt + 1,
                          color: DingColors.dark()),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  Widget _timesContainer(String day, String year, String month, String time) =>
      Container(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier! * 4.5),
          margin: EdgeInsets.only(top: SizeConfig.heightMultiplier!),
          height: 14.7.rh,
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      day,
                      style: TextStyle(
                          fontSize: 2.8.rt + 1,
                          color: DingColors.dark()),
                    ),
                    Text(
                      '${month} ${year}',
                      style: TextStyle(
                          fontSize: 2.3.rt + 1,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'جمع :',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier! * 2,
                  ),
                  Text(
                    time,
                    style: TextStyle(fontSize: 15, color: DingColors.primary()),
                  ),
                ],
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier! * 5,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 3.0.rh,
              )
            ],
          ));
  @override
  void initState() {
    super.initState();
    _detailedReportBloc = BlocProvider.of<DetailedReportBloc>(context);
    _detailedReportBloc.add(ShowDeReportLoading(true));
    Future.delayed(Duration(milliseconds: 1500),(){
      _detailedReportBloc.add(GetDetailedReportData());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: DingColors.veryLight(),
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
                    padding: EdgeInsets.only(
                        right: 2.4 .rw),
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 3.0.rh,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                )),
                Text(
                  'گزارش تفضیلی',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 2.73.rt,
                      color: Colors.white),
                ),
                Expanded(child: SizedBox())
              ],
            ),
          ),
        ),
        body: BlocBuilder(
          bloc: _detailedReportBloc,
          builder: (_, state) {
            if (state is DeReportLoadingState) {
              return Center(
                child: CircularProgressIndicator(
                  color: DingColors.primary(),
                ),
              );
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    _infoContainer(),
                    _timesContainer('سه شنبه، 21', '1386', 'خرداد', '02:51:00'),
                    _timesContainer('سه شنبه، 21', '1386', 'خرداد', '02:51:00'),
                    _timesContainer('سه شنبه، 21', '1386', 'خرداد', '02:51:00'),
                    _timesContainer('سه شنبه، 21', '1386', 'خرداد', '02:51:00'),
                    _timesContainer('سه شنبه، 21', '1386', 'خرداد', '02:51:00'),
                  ],
                ),
              );
            }
          },
        ));
  }
}
