import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prototype_app/screens/todo_list/component/body.dart';
import 'package:prototype_app/size_config.dart';

class TodoListScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '작업목록',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
