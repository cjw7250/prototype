import 'package:flutter/material.dart';
import 'package:prototype_app/constants.dart';
import 'package:get/get.dart';
import 'package:prototype_app/route.dart';
import 'package:prototype_app/screens/sign_in/signin_or_signup_screen.dart';
import 'package:prototype_app/screens/todo_list/todo_list_screen.dart';
import 'package:prototype_app/size_config.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(flex: 2),
            Image.asset("assets/images/welcome_image.png"),
            Spacer(flex: 3),
            Text(
              "Welcome to our freedom \nmessaging app",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              "Freedom talk any person of your \nmother language.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .color
                    .withOpacity(0.64),
              ),
            ),
            Spacer(flex: 3),
            FittedBox(
              child: TextButton(
                onPressed: () {
                  Get.off(
                    SigninOrSignupScreen(),
                    transition: Transition.topLevel,
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "Skip",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .color
                                .withOpacity(0.8),
                          ),
                    ),
                    SizedBox(width: kDefaultPadding / 4),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .color
                          .withOpacity(0.8),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
