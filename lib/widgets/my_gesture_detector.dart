import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/navigation_drawer.dart';

class MyGestureDetector extends StatelessWidget {
  const MyGestureDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gesture Detector'),
      ),
      drawer: const NavigationDrawer(),
      body: const Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    return GestureDetector(
      onTap: () => {
        scaffold.showSnackBar(
          SnackBar(
            content: const Text('MyButton was pressed'),
            action: SnackBarAction(
              label: 'Hide',
              onPressed: scaffold.hideCurrentSnackBar,
            ),
          ),
        ),
      },
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: const Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}
