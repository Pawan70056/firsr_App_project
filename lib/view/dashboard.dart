import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/arithmetic');
              },
              child: Text('Arithmetic Operations'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/simple-interest');
              },
              child: Text('Simple Interest'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/area-of-circle');
              },
              child: Text('Area of Circle'),
            ),
          ],
        ),
      ),
    );
  }
}
