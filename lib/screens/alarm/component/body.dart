import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:prototype_app/constants.dart';
import 'package:prototype_app/data/Alarm.dart';
import 'package:prototype_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getSortByDate();
    getListGroupBy();
    return ListView.builder(
      itemCount: getListGroupBy().length,
      itemBuilder: (context, index) {
        String key = getListGroupBy().keys.elementAt(index);
        List<Alarm> values = getListGroupBy().values.elementAt(index);
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding * 0.5,
            horizontal: kDefaultPadding,
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: kDefaultPadding * 0.5,
                  ),
                  child: Row(
                    children: [
                      Text(
                        '${DateFormat('yyyy. M. d').format(DateTime.parse(key))} (${DateFormat('EEEE').format(DateTime.parse(key))})',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: getProportionateScreenWidth(15),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ...List.generate(
                values.length,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: kDefaultPadding * 0.5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${values[index].productName}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(17.5),
                            ),
                          ),
                          Text(
                            '${DateFormat('HH:mm:ss').format(values[index].date)}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(17.5),
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: kDefaultPadding * 0.5,
                      ),
                      Text(
                        '${values[index].description}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(15),
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
