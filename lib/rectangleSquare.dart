// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class rectangleSquare extends StatefulWidget {
  rectangleSquare({super.key});

  @override
  State<rectangleSquare> createState() => _rectangleSquareState();
}

// ignore: camel_case_types
class _rectangleSquareState extends State<rectangleSquare> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  double? length = 0, width = 0, result = 0;

  calculate() {
    setState(() {
      length = double.parse(controller1.text);
      width = double.parse(controller2.text);

      result = length! * width!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rectangle or Square'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: controller1,
            decoration: const InputDecoration(
                labelText: "Enter Length",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: controller2,
            decoration: const InputDecoration(
                labelText: "Enter Width",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
          const SizedBox(
            height: 20,
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
