import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatefulWidget {
  @override
  _AreaOfCircleScreenState createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  final TextEditingController radiusController = TextEditingController();
  String result = '';

  void calculateArea() {
    double radius = double.parse(radiusController.text);
    double area = 3.14159 * radius * radius;

    setState(() {
      result = 'Area of Circle: $area';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Area of Circle')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: radiusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Radius of Circle'),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: calculateArea, child: Text('Calculate')),
            SizedBox(height: 20),
            Text(result, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
