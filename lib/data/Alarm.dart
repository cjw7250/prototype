import 'package:intl/intl.dart';

class Alarm {
  final DateTime date;
  final String productId;
  final String productName;
  final String workEffortId;
  final String description;

  Alarm({
    this.date,
    this.productId,
    this.productName,
    this.workEffortId,
    this.description,
  });
}

List<Alarm> alarmData = [
  Alarm(
    date: DateTime.parse('2021-05-10 10:14:38'),
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    workEffortId: '10000',
    description: '1',
  ),
  Alarm(
    date: DateTime.parse('2021-05-09 10:14:38'),
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    workEffortId: '10000',
    description: '2',
  ),
  Alarm(
    date: DateTime.parse('2021-05-08 10:14:38'),
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    workEffortId: '10000',
    description: '3',
  ),
  Alarm(
    date: DateTime.parse('2021-05-09 17:19:06'),
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    workEffortId: '10000',
    description: '4',
  ),
  Alarm(
    date: DateTime.parse('2021-05-08 14:16:58'),
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    workEffortId: '10000',
    description: '5',
  ),
  Alarm(
    date: DateTime.parse('2021-05-10 09:45:24'),
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    workEffortId: '10000',
    description: '6',
  ),
  Alarm(
    date: DateTime.parse('2021-05-05 13:10:47'),
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    workEffortId: '10000',
    description: '7',
  ),
  Alarm(
    date: DateTime.parse('2021-05-06 11:18:28'),
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    workEffortId: '10000',
    description: '8',
  ),
  Alarm(
    date: DateTime.parse('2021-05-08 15:51:21'),
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    workEffortId: '10000',
    description: '9',
  ),
  Alarm(
    date: DateTime.parse('2021-05-01 11:00:02'),
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    workEffortId: '10000',
    description: '10',
  ),
  Alarm(
    date: DateTime.parse('2021-05-03 08:04:11'),
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    workEffortId: '10000',
    description: '11',
  ),
  Alarm(
    date: DateTime.parse('2021-05-03 09:33:41'),
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    workEffortId: '10000',
    description: '12',
  ),
  Alarm(
    date: DateTime.parse('2021-05-07 13:14:15'),
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    workEffortId: '10000',
    description: '13',
  ),
];

void getSortByDate() {
  alarmData.sort((a, b) => b.date.compareTo(a.date));
}

String getDateFormat(DateTime datetime) {
  return DateFormat('yyyy-MM-dd HH:mm:ss').format(datetime);
}

groupBy(alarmData, (alarm) => alarm['date']);
