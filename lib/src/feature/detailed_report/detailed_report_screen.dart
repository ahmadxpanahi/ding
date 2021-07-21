import 'package:ding/ui/colors.dart';
import 'package:ding/ui/size_config.dart';
import 'package:flutter/material.dart';

class DetailedReportScreen extends StatefulWidget {
  const DetailedReportScreen({Key? key}) : super(key: key);

  @override
  _DetailedReportScreenState createState() => _DetailedReportScreenState();
}

class _DetailedReportScreenState extends State<DetailedReportScreen> {

  Widget _infoContainer() => Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier! * 4.5),
            height: 15 * SizeConfig.heightMultiplier!,
            child: Row(
              children: [
                Container(
                  width: 8 * SizeConfig.heightMultiplier!,
                  height: 8 * SizeConfig.heightMultiplier!,
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
                          fontSize: 2.2 * SizeConfig.textMultiplier! + 1,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier! * 3,
                    ),
                    Text(
                      '02 خرداد 1398',
                      style: TextStyle(
                          fontSize: 2.2 * SizeConfig.textMultiplier! + 1,
                          color: DingColors.dark()),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'پایان',
                      style: TextStyle(
                          fontSize: 2.2 * SizeConfig.textMultiplier! + 1,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier! * 3,
                    ),
                    Text(
                      '02 خرداد 1398',
                      style: TextStyle(
                          fontSize: 2.2 * SizeConfig.textMultiplier! + 1,
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
          height: 14.7 * SizeConfig.heightMultiplier!,
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
                          fontSize: 2.8 * SizeConfig.textMultiplier! + 1,
                          color: DingColors.dark()),
                    ),
                    Text(
                      '${month} ${year}',
                      style: TextStyle(
                          fontSize: 2.3 * SizeConfig.textMultiplier! + 1,
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
                size: 3 * SizeConfig.heightMultiplier!,
              )
            ],
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DingColors.veryLight(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          padding: EdgeInsets.only(top: 2.2 * SizeConfig.heightMultiplier!),
          alignment: Alignment.center,
          color: DingColors.primary(),
          height: 13.3 * SizeConfig.heightMultiplier!,
          child: Row(
            children: [
              Expanded(
                  child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding:
                      EdgeInsets.only(right: 2.4 * SizeConfig.widthMultiplier!),
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
                'گزارش تفضیلی',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 2.73 * SizeConfig.textMultiplier!,
                    color: Colors.white),
              ),
              Expanded(child: SizedBox())
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
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
      ),
    );
  }
}
