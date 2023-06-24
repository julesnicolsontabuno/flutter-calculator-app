// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'circle.dart';
import 'secondPage.dart';
import 'NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jules App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(title: Text('Some Application')),
      // body: Align(
      //   alignment: Alignment.topCenter,
      //   child: Column(children: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Text(
      //         'Area Calculations',
      //         style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      //       ),
      //     ),
      //     ElevatedButton(
      //       child: Text('Page 1'),
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => circle()),
      //         );
      //       },
      //     ),
      //     ElevatedButton(
      //       child: Text('Page 2'),
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => circle()),
      //         );
      //       },
      //     )
      //   ]),
      // )
    );
  }
}

// class TextInputWidget extends StatefulWidget {
//   const TextInputWidget({super.key});

//   @override
//   State<TextInputWidget> createState() => _TextInputWidgetState();
// }

// class _TextInputWidgetState extends State<TextInputWidget> {
//   final controller = TextEditingController();
//   String text = "";

//   @override
//   void dispose() {
//     super.dispose();
//     controller.dispose();
//   }

//   void changeText(text) {
//     setState(() {
//       this.text = text;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(children: <Widget>[
//       TextField(
//         controller: controller,
//         decoration: InputDecoration(
//             prefixIcon: Icon(Icons.message), labelText: "Type a message"),
//         onChanged: (txt) => changeText(txt),
//       ),
//       Text(text)
//     ]);
//   }
// }
