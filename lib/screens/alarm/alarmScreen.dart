import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prototype_app/screens/alarm/component/body.dart';

class AlarmScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('알림'),
      ),
      body: Body(),
    );
  }
}
