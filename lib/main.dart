import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'samVAAD',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Color(0xFFFEF9EB),
      ),
      home: homeScreen(),
    );
  }
}
