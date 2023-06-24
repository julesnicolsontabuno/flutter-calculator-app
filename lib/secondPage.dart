// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class secondPage extends StatelessWidget {
  const secondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: const Center(
        child: Text("This is the second page"),
      ),
    );
  }
}
