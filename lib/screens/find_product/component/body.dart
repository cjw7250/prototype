import 'package:flutter/material.dart';
import 'package:prototype_app/data/Product.dart';
import 'package:prototype_app/size_config.dart';
import 'package:sticky_headers/sticky_headers.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getSortByFirstWord();
    Map<String, List<Product>> groupByList = getListGroupByFirstWord();
    return ListView.builder(
      itemCount: groupByList.length,
      itemBuilder: (context, index) {
        String key = groupByList.keys.elementAt(index);
        List<Product> values = groupByList.values.elementAt(index);
        return StickyHeader(
          header: Container(
            width: double.maxFinite,
            color: Colors.grey,
            child: Text(
              key,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(15),
                color: Colors.white,
              ),
            ),
          ),
          content: Column(),
        );
      },
    );
  }
}
