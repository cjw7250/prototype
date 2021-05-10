import 'package:intl/intl.dart';
import 'package:collection/collection.dart';

class Alarm {
  final DateTime date;
  final String productId;
  final String productName;
  final String workEffortId;
  final String description;
  final bool read;

  Alarm({
    this.date,
    this.productId,
    this.productName,
    this.workEffortId,
    this.description,
    this.read,
  });
}

List<Alarm> alarmData = [
  Alarm(
    date: DateTime.parse('2021-05-10 10:14:38+0900'),
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    workEffortId: '10000',
    description: '첫번째',
  ),
  Alarm(
    date: DateTime.parse('2021-05-09 10:14:38').toLocal(),
    productId: "LBB32x100INCH",
    productName: "LBB 32x100 INCH",
    workEffortId: '10000',
    description: '두번째',
  ),
  Alarm(
    date: DateTime.parse('2021-05-08 10:14:38'),
    productId: "SGPR25x100",
    productName: "SGPR 25x100",
    workEffortId: '10000',
    description: '세번째',
  ),
  Alarm(
    date: DateTime.parse('2021-05-09 17:19:06'),
    productId: "SGPN25x100",
    productName: "SGPN 25x100",
    workEffortId: '10000',
    description: '네번째',
  ),
  Alarm(
    date: DateTime.parse('2021-05-08 14:16:58'),
    productId: "RK32x120미즈미",
    productName: "RK 32x120 미즈미",
    workEffortId: '10000',
    description: '다섯번째',
  ),
  Alarm(
    date: DateTime.parse('2021-05-10 09:45:24'),
    productId: "RK32x150INCH",
    productName: "RK 32x150 INCH",
    workEffortId: '10000',
    description: '여섯번째',
  ),
  Alarm(
    date: DateTime.parse('2021-05-05 13:10:47'),
    productId: "MYKP32x150INCH",
    productName: "MYKP 32x150 INCH",
    workEffortId: '10000',
    description: '일곱번째',
  ),
  Alarm(
    date: DateTime.parse('2021-05-06 11:18:28'),
    productId: "BGP38x150INCH",
    productName: "BGP 38x150 INCH",
    workEffortId: '10000',
    description: '여덟번째',
  ),
  Alarm(
    date: DateTime.parse('2021-05-08 15:51:21'),
    productId: "SGPH25x110",
    productName: "SGPH 25x110",
    workEffortId: '10000',
    description: '아홉번째',
  ),
  Alarm(
    date: DateTime.parse('2021-05-01 11:00:02'),
    productId: "SGPH13x65",
    productName: "SGPH 13x65",
    workEffortId: '10000',
    description: '열번째',
  ),
  Alarm(
    date: DateTime.parse('2021-05-03 08:04:11'),
    productId: "SGBT13x25",
    productName: "SGBT 13x25",
    workEffortId: '10000',
    description: '열한번째',
  ),
  Alarm(
    date: DateTime.parse('2021-05-03 09:33:41'),
    productId: "SGOH25x90",
    productName: "SGOH 25x90",
    workEffortId: '10000',
    description: '열두번째',
  ),
  Alarm(
    date: DateTime.parse('2021-05-07 13:14:15'),
    productId: "MYAK38x100INCH",
    productName: "MYAK 38x100 INCH",
    workEffortId: '10000',
    description: '열세번째',
  ),
];

void getSortByDate() {
  alarmData.sort((a, b) => b.date.compareTo(a.date));
}

String getDateFormat(DateTime datetime) {
  return DateFormat('yyyy-MM-dd HH:mm:ss').format(datetime);
}

Map<String, List<Alarm>> getListGroupBy() {
  Map<String, List<Alarm>> groupByList = groupBy(
      alarmData, (alarm) => DateFormat('yyyy-MM-dd').format(alarm.date));
  return groupByList;
}
