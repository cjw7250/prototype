import 'package:flutter/material.dart';
import 'package:prototype_app/data/Alarm.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getSortByDate();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                alarmData.length,
                (index) {
                  return Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('${alarmData[index].workEffortId}'),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text('${alarmData[index].date}'),
                                Text('${alarmData[index].productName}'),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text('${alarmData[index].description}'),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
