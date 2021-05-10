import 'package:flutter/material.dart';
import 'package:prototype_app/constants.dart';
import 'package:prototype_app/data/Alarm.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getSortByDate();
    // return ListView.builder(
    //   itemCount: alarmData.length,
    //   itemBuilder: (context, index) => Padding(
    //     padding: EdgeInsets.all(kDefaultPadding),
    //     child: Container(
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(5),
    //         border: Border.all(
    //           color: Colors.black,
    //         ),
    //       ),
    //       child: Column(
    //         children: [
    //           Text('${getDateFormat(alarmData[index].date)}'),
    //           Text('${getDateFormat(alarmData[index].date)}'),
    //           Text('${getDateFormat(alarmData[index].date)}'),
    //           Text('${getDateFormat(alarmData[index].date)}'),
    //         ],
    //       ),
    //     ),
    //   ),
    // );

    return Grouped
  }
}
