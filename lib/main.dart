import 'package:flutter/material.dart';
import 'package:prototype_app/home.dart';
import 'package:prototype_app/screens/sign_in/sign_in.dart';
import 'package:prototype_app/size_config.dart';
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
      theme: theme(),
      initialRoute: '/signIn',
      getPages: [
        GetPage(
          name: '/signIn',
          page: () => SignIn(),
          transition: Transition.topLevel,
        ),
      ],
    );
  }
}
