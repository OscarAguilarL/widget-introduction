import 'package:flutter/material.dart';
import 'package:flutter_components/routes/page_routes.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Text('Introducción a los Widgets'),
          ),
          ListTile(
            leading: const Icon(
              Icons.home_work_outlined,
            ),
            title: const Text('Hello World'),
            onTap: () {
              Navigator.pushReplacementNamed(context, PageRoutes.helloWorld);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.train,
            ),
            title: const Text('Basic Widgets'),
            onTap: () {
              Navigator.pushReplacementNamed(context, PageRoutes.basicWidgets);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('Material Components'),
            onTap: () {
              Navigator.pushReplacementNamed(context, PageRoutes.tutorialHome);
            },
          ),
          ListTile(
            leading: const Icon(Icons.fingerprint),
            title: const Text('Gesture Detector'),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, PageRoutes.gestureDetector);
            },
          ),
        ],
      ),
    );
  }
}
