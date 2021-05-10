import 'package:flutter/material.dart';
import 'package:prototype_app/components/filled_outline_button.dart';
import 'package:prototype_app/constants.dart';

class TodoTapBar extends StatelessWidget {
  const TodoTapBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
      color: kPrimaryColor,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            FillOutlineButton(
              press: () {},
              text: "All",
              isFilled: false,
            ),
            SizedBox(width: kDefaultPadding),
            FillOutlineButton(
              press: () {},
              text: "Sales",
              isFilled: false,
            ),
            SizedBox(width: kDefaultPadding),
            FillOutlineButton(
              press: () {},
              text: "Purchases",
              isFilled: false,
            ),
            SizedBox(width: kDefaultPadding),
            FillOutlineButton(
              press: () {},
              text: "Manufacture",
            ),
            SizedBox(width: kDefaultPadding),
            FillOutlineButton(
              press: () {},
              text: "Quality",
              isFilled: false,
            ),
            SizedBox(width: kDefaultPadding),
            FillOutlineButton(
              press: () {},
              text: "Inventory",
              isFilled: false,
            ),
            SizedBox(width: kDefaultPadding),
            FillOutlineButton(
              press: () {},
              text: "Fixed Asset",
              isFilled: false,
            ),
          ],
        ),
      ),
    );
  }
}
