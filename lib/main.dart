import 'package:first_app/view/area0fcircle.dart';
import 'package:first_app/view/arithmetic.dart';
import 'package:first_app/view/dashboard.dart';
import 'package:first_app/view/si.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FirstAssignmentApp());
}

class FirstAssignmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
      routes: {
        '/arithmetic': (context) => ArithmeticScreen(),
        '/simple-interest': (context) => SimpleInterestScreen(),
        '/area-of-circle': (context) => AreaOfCircleScreen(),
      },
    );
  }
}
