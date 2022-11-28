import 'package:flutter/material.dart';
import 'package:navi_codefactory/layout/main_layout.dart';

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
      ],
    );
  }
}
