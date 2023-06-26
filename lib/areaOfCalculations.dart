// ignore: file_names
import 'package:flutter/material.dart';

import 'circle1.dart';
import 'rectangleSquare.dart';

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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const circle1()),
                    );
                  },
                  child: const Text('Circle'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => rectangleSquare()),
                    );
                  },
                  child: const Text('Rectangle or Square'),
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
