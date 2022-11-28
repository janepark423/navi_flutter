import 'package:flutter/material.dart';
import 'package:navi_codefactory/screen/route_one_screen.dart';

import 'screen/home_screen.dart';
import 'screen/route_three_screen.dart';
import 'screen/route_two_screen.dart';

void main() {
  runApp(
    MaterialApp(
      //home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/one': (context) => RouteOneScreen(),
        '/two': (context) => RouteTwoScreen(),
        '/three': (context) => RouteThreeScreen(),
      },
    ),
  );
}
