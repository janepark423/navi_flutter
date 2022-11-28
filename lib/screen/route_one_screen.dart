import 'package:flutter/material.dart';
import 'package:navi_codefactory/layout/main_layout.dart';
import 'package:navi_codefactory/screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int number;

  const RouteOneScreen({required this.number, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Rount 1 page',
      children: [
        Text(
          number.toString(),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(456);
          },
          child: Text('pop'),
        ),
        ElevatedButton(
          //스택 stack 구조 homescren > routeone > routetwo
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => RouteTwoScreen(),
              ),
            );
          },
          child: Text('PUSH'),
        ),
      ],
    );
  }
}
