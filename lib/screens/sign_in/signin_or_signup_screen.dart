import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prototype_app/components/primary_button.dart';
import 'package:prototype_app/constants.dart';
import 'package:prototype_app/route.dart';
import 'package:prototype_app/screens/alarm/alarmScreen.dart';
import 'package:prototype_app/screens/home/homeScreen.dart';

class SigninOrSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(flex: 2),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? "assets/images/Logo_light.png"
                    : "assets/images/Logo_dark.png",
                height: 146,
              ),
              Spacer(),
              PrimaryButton(
                text: "Sign In",
              ),
              SizedBox(height: kDefaultPadding * 1.5),
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Sign Up",
                press: () {
                  Get.off(
                    HomeScreen(),
                    transition: Transition.topLevel,
                  );
                },
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
