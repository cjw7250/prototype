import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prototype_app/screens/add_todo/addTodoScreen.dart';
import 'package:prototype_app/screens/alarm/alarmScreen.dart';
import 'package:prototype_app/screens/home/bottomNavController.dart';
import 'package:prototype_app/screens/todo_list/todoListScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
        init: BottomNavController(),
        builder: (bottomNavController) {
          return Scaffold(
            body: SafeArea(
              child: IndexedStack(
                index: bottomNavController.tabIndex,
                children: [
                  TodoListScreen(),
                  AlarmScreen(),
                  AddTodoScreen(),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: bottomNavController.changeBottomNav,
              currentIndex: bottomNavController.tabIndex,
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
              ],
            ),
          );
        });
  }
}
