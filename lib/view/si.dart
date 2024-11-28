import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  @override
  _SimpleInterestScreenState createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  final TextEditingController principalController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  String result = '';

  void calculateSI() {
    double principal = double.parse(principalController.text);
    double rate = double.parse(rateController.text);
    double time = double.parse(timeController.text);

    double simpleInterest = (principal * rate * time) / 100;

    setState(() {
      result = 'Simple Interest: $simpleInterest';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Interest')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: principalController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Principal Amount'),
            ),
            TextField(
              controller: rateController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Rate of Interest'),
            ),
            TextField(
              controller: timeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Time Period'),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: calculateSI, child: Text('Calculate')),
            SizedBox(height: 20),
            Text(result, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
