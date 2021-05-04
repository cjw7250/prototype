import 'package:flutter/material.dart';
import 'package:prototype_app/screens/welcome/welcome_screen.dart';
import 'package:prototype_app/theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prototype',
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      initialRoute: '/welcome',
      getPages: [
        GetPage(
          name: '/welcome',
          page: () => WelcomeScreen(),
          transition: Transition.topLevel,
        ),
      ],
    );
  }
}
