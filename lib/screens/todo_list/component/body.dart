import 'package:flutter/material.dart';
import 'package:prototype_app/screens/todo_list/component/todo_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TodoList(),
      ],
    );
  }
}
