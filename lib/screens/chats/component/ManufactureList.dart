import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:prototype_app/constants.dart';
import 'package:prototype_app/data/Manufacture.dart';
import 'package:prototype_app/size_config.dart';

class ManufactureList extends StatelessWidget {
  const ManufactureList({
    Key key,
    @required this.slidableController,
  }) : super(key: key);

  final SlidableController slidableController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
          height: 0.0,
        ),
        itemCount: manufactureData.length,
        itemBuilder: (context, index) => Slidable(
          key: Key(manufactureData[index].productId),
          actionPane: SlidableStrechActionPane(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 0.75,
              vertical: kDefaultPadding * 0.75,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor:
                      getManufactureColor(manufactureData[index].status),
                  child: getManufactureIcon(manufactureData[index].status),
                ),
                SizedBox(
                  width: kDefaultPadding,
                ),
                Expanded(
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
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          closeOnScroll: true,
          controller: slidableController,
          secondaryActions: [
            IconSlideAction(
              icon: Icons.play_arrow_rounded,
              caption: '시작',
              color: Colors.blue,
            ),
            IconSlideAction(
              icon: Icons.clear,
              caption: '취소',
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
