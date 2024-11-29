import 'package:flutter/material.dart';

class ArithmaticView extends StatelessWidget {
  const ArithmaticView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arithmatic View"),
        centerTitle: true,
        elevation: 0,
      ),
      body: const TextField(),
    );
  }
}
