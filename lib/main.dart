import 'package:country_code_picker/country_localizations.dart';
import 'package:ding/src/feature/home/home_screen.dart';
import 'package:ding/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context,Orientation orientation){
        return LayoutBuilder(
          builder: (BuildContext context , BoxConstraints constraints){
            SizeConfig().init(constraints , orientation);
            return MaterialApp(
              theme: ThemeData(
                fontFamily: 'IRANYekan'
              ),
              debugShowCheckedModeBanner: false,
              home: HomeScreen(),
              localizationsDelegates: [
                CountryLocalizations.delegate,

              ],
            );
          },
        );
      },
    );
  }
}
