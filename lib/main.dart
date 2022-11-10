import 'package:flutter/material.dart';
import 'package:flutter_components/routes/page_routes.dart';
import 'package:flutter_components/widgets/basic_widgets.dart';
import 'package:flutter_components/widgets/counter.dart';
import 'package:flutter_components/widgets/hello_world.dart';
import 'package:flutter_components/widgets/my_gesture_detector.dart';
import 'package:flutter_components/widgets/tutorial_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Introduccion a los Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HelloWorld(),
      routes: {
        PageRoutes.helloWorld: (context) => const HelloWorld(),
        PageRoutes.basicWidgets: (context) => const MyScaffold(),
        PageRoutes.tutorialHome: (context) => TutorialHome(),
        PageRoutes.gestureDetector: (context) => const MyGestureDetector(),
        PageRoutes.counter: (context) => const MyCounter(),
      },
    );
  }
}
