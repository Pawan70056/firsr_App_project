import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  @override
  _ArithmeticScreenState createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  String result = '';

  void calculate(String operation) {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    double res;

    switch (operation) {
      case '+':
        res = num1 + num2;
        break;
      case '-':
        res = num1 - num2;
        break;
      case '*':
        res = num1 * num2;
        break;
      case '/':
        res = num1 / num2;
        break;
      default:
        res = 0;
    }

    setState(() {
      result = 'Result: $res';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Arithmetic Operations')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter First Number'),
            ),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Second Number'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () => calculate('+'), child: Text('+')),
                ElevatedButton(
                    onPressed: () => calculate('-'), child: Text('-')),
                ElevatedButton(
                    onPressed: () => calculate('*'), child: Text('*')),
                ElevatedButton(
                    onPressed: () => calculate('/'), child: Text('/')),
              ],
            ),
            SizedBox(height: 20),
            Text(result, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
