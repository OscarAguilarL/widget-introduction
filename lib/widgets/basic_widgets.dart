import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/navigation_drawer.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menú de navegación',
            onPressed: null, // null deshabilita el botón
          ),
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece
    // of paper on which the UI appears.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold'),
      ),
      drawer: const NavigationDrawer(),
      body: Material(
        // Column is a vertical, linear layout.
        child: Column(
          children: [
            MyAppBar(
              title: Text(
                'Titulo de ejemplo',
                style: Theme.of(context) //
                    .primaryTextTheme
                    .headline6,
              ),
            ),
            const Expanded(
              child: Center(
                child: Text(
                  'Hola mundo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
