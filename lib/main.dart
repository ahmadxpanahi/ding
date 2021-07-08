import 'package:ding/ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'features/home/home.dart';

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
              debugShowCheckedModeBanner: false,
              home: Home(),
            );
          },
        );
      },
    );
  }
}
