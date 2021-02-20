import 'package:flutter/material.dart';
import 'package:flutter_speed_code/theme/theme_constants.dart';
import 'package:flutter_speed_code/views/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: tBackgroundColor,
        primaryColor: tPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: tTextColor,
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
