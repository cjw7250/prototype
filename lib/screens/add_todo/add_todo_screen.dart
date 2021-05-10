import 'package:flutter/material.dart';
import 'package:prototype_app/screens/add_todo/component/body.dart';
import 'package:prototype_app/size_config.dart';

class AddTodoScreen extends StatelessWidget {
  const AddTodoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '작업추가',
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
