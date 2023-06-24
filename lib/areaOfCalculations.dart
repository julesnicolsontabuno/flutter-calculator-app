// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class areaofCalculations extends StatelessWidget {
  const areaofCalculations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Area of Calculations'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Circle'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Rectangle'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Any Triangle'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Trapezoid'),
                ),
              ],
            ),
          ),
        ));
  }
}
