import 'package:flutter/material.dart';
import 'package:prototype_app/screens/find_product/component/body.dart';
import 'package:prototype_app/size_config.dart';

class FindProductScreen extends StatelessWidget {
  const FindProductScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '제품 목록',
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
