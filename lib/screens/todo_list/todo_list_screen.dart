import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prototype_app/screens/todo_list/component/body.dart';

class TodoListScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('작업목록'),
      ),
      body: Body(),
    );
  }
}
