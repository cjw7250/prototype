import 'package:flutter/material.dart';
import 'package:prototype_app/constants.dart';
import 'package:prototype_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, kDefaultPadding, kDefaultPadding, 0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: kPrimaryColor,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Text(
                      '품명',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(25),
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: kPrimaryColor,
                        width: 2.0,
                      ),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      '품목 찾기',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, kDefaultPadding, kDefaultPadding, 0),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 5,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: kPrimaryColor,
              ),
            ),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: '수량',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(25),
                    ),
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(25),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
