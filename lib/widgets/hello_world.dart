import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/navigation_drawer.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      drawer: const NavigationDrawer(),
      body: const Center(
        child: Text(
          'Hello, world!',
          style: TextStyle(
            fontSize: 32,
            color: Colors.indigo,
          ),
        ),
      ),
    );
  }
}
