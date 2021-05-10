import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prototype_app/screens/chats/chats_screen.dart';
import 'package:prototype_app/screens/home/bottomNavController.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(builder: (bottomNavController) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: bottomNavController.tabIndex,
            children: [
              ChatsScreen(),
              ChatsScreen(),
              ChatsScreen(),
              ChatsScreen(),
              ChatsScreen(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_sharp),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "",
            ),
          ],
        ),
      );
    });
  }
}
