
// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class circle extends StatelessWidget {
  circle({super.key});

  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Column(
        children: [
          const Text(
            "Result: ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: controller1,
            decoration: const InputDecoration(
                labelText: "Enter First Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: controller2,
            decoration: const InputDecoration(
                labelText: "Enter Second Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Add"))
        ],
      ),
    );
  }
}
