// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class circle extends StatelessWidget {
  circle({super.key});

  final controller1 = TextEditingController();

  int result = 0, num1 = 0;

  // add() {
  //   setState(() {
  //     num1 = int.parse(controller1.text);

  //     result = 3.14 * num1 * num1;
  //   });
  // }

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
                labelText: "Enter Radius Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Calculate"))
        ],
      ),
    );
  }
}
