import 'dart:math';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class circle1 extends StatefulWidget {
  const circle1({super.key});

  @override
  State<circle1> createState() => _circle1State();
}

// ignore: camel_case_types
class _circle1State extends State<circle1> {
  final controller1 = TextEditingController();

  double? result = 0, num1 = 0;

  calculate() {
    setState(() {
      num1 = double.parse(controller1.text);

      double r = 3.14 * pow(num1 as num, 2);
      result = double.parse(r.toStringAsFixed(2));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: controller1,
            decoration: const InputDecoration(
                labelText: "Enter Radius Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            keyboardType: TextInputType.number,
          ),
          Text(
            'Result: $result',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: () {
                calculate();
              },
              child: const Text("Calculate"))
        ],
      ),
    );
  }
}
