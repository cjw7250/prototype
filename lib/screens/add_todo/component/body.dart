import 'package:flutter/material.dart';
import 'package:prototype_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: '품명',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: '수량',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
