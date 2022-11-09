import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/navigation_drawer.dart';

class TutorialHome extends StatelessWidget {
  TutorialHome({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () =>
              _scaffoldKey.currentState?.openDrawer(), // desactivado
          icon: const Icon(Icons.menu_book),
          tooltip: 'Navigation menú',
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: 'Search',
          ),
        ],
      ),
      drawer: const NavigationDrawer(),
      body: const Center(
        child: Text('Hola mundo!'),
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add',
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
