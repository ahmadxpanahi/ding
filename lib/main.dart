import 'package:country_code_picker/country_localizations.dart';
import 'package:ding/src/feature/splash/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ding/fallback_cupertino_localizations_delegate.dart';
import 'package:ding/src/feature/home/home_screen.dart';
import 'package:ding/src/ui/size_config.dart';import 'package:ding/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              theme: ThemeData(
                fontFamily: 'IRANYekan',
              ),
              locale: Locale('fa', ''),
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
              localizationsDelegates: [
                CountryLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                FarsiCupertinoLocalizations.delegate,
              ],
              supportedLocales: [
                const Locale('en', 'US'), // English
                const Locale('fa', 'IR'), // Persian
              ],
            );
          },
        );
      },
    );
  }
}
