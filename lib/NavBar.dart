// ignore: file_names
import 'package:flutter/material.dart';
import 'secondPage.dart';
import 'areaOfCalculations.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(
              child: Text(
                'Measurements, Conversions, and Formulas',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.circle),
            title: const Text('Area of Calculations'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const areaofCalculations()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.circle),
            title: const Text('Volume Calculations'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const secondPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
