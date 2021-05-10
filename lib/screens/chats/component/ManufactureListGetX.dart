import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prototype_app/data/Manufacture.dart';
import 'package:prototype_app/screens/chats/controller/ManufactureController.dart';
import 'package:prototype_app/size_config.dart';

class ManufactureListGetX extends StatelessWidget {
  const ManufactureListGetX({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GetX<ManufactureController>(
        init: ManufactureController(),
        builder: (_) {
          return ReorderableListView(
            children: [
              ...List.generate(
                _.rxList.length,
                (index) => ListTile(
                  key: Key(
                    index.toString(),
                  ),
                  title: Text(
                    '${manufactureData[index].productName}',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(20.0),
                    ),
                  ),
                ),
              ),
            ],
            onReorder: (int oldIndex, int newIndex) => {
              _.changeRow(oldIndex, newIndex),
            },
          );
        },
      ),
    );
  }
}
