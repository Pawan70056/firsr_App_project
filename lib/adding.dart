import 'package:flutter/material.dart';

void main() {
  runApp(AdditionApp());
}

class AdditionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Addition App',
      home: AdditionScreen(),
    );
  }
}

class AdditionScreen extends StatefulWidget {
  @override
  _AdditionScreenState createState() => _AdditionScreenState();
}

class _AdditionScreenState extends State<AdditionScreen> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  double? _result;

  void _addNumbers() {
    final double num1 = double.tryParse(_num1Controller.text) ?? 0;
    final double num2 = double.tryParse(_num2Controller.text) ?? 0;
    setState(() {
      _result = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Two Numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter the first number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter the second number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _addNumbers,
              child: Text('Add'),
            ),
            SizedBox(height: 16),
            if (_result != null)
              Text(
                'Result: $_result',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
