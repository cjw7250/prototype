import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:prototype_app/components/filled_outline_button.dart';
import 'package:prototype_app/constants.dart';
import 'package:prototype_app/data/Manufacture.dart';
import 'package:prototype_app/size_config.dart';

class Body extends StatelessWidget {
  SlidableController slidableController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TodoTapBar(),
        Expanded(
          child: ListView.builder(
            itemCount: manufactureData.length,
            itemBuilder: (context, index) => Slidable(
              key: Key(manufactureData[index].productId),
              controller: slidableController,
              actionPane: SlidableStrechActionPane(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 0.5,
                  vertical: kDefaultPadding * 0.5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${manufactureData[index].productName}',
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(20.0),
                          ),
                        ),
                        Text(
                          '${manufactureData[index].quantity}',
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(20.0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenWidth(1.5),
                    ),
                    Text(
                      '${manufactureData[index].description}',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(13.0),
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
              // child: ListTile(
              //   title: Text('${manufactureData[index].productName}'),
              //   subtitle: Text('${manufactureData[index].description}'),
              // ),
              actions: [
                IconSlideAction(
                  caption: 'Add',
                  color: Colors.blue,
                  icon: Icons.add,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

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
