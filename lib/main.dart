import 'package:flutter/material.dart';
import 'package:prototype_app/home.dart';
import 'package:prototype_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prototype',
      theme: theme(),
      home: Home(),
    );
  }
}
