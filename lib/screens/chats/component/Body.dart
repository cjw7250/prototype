import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:prototype_app/screens/chats/component/ManufactureList.dart';
import 'package:prototype_app/screens/chats/component/ManufactureListGetX.dart';
import 'package:prototype_app/screens/chats/component/TodoTabBar.dart';

class Body extends StatelessWidget {
  final SlidableController slidableController = SlidableController();
  // final controller = Get.put(ManufactureController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // TodoTapBar(),
        ManufactureList(slidableController: slidableController),
        // ManufactureListGetX(),
      ],
    );
  }
}
