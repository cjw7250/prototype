import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Manufacture {
  final String date;
  final String productId;
  final String productName;
  final double quantity;
  final String description;
  final String status;

  Manufacture({
    this.date = '',
    this.productId = '',
    this.productName = '',
    this.quantity = 0,
    this.description = '',
    this.status = '',
  });
}

List manufactureData = [
  Manufacture(
    date: "2021-05-03",
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    quantity: 4,
    description: 'NT발주, 마킹 : K2P00250001',
    status: 'RUNNING',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "LBB32x100INCH",
    productName: "LBB 32x100 INCH",
    quantity: 8,
    description: 'LBB80(외경43), 압입부35(0.07)/리테제외/염욕',
    status: 'PAUSE',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "SGPR25x100",
    productName: "SGPR 25x100",
    quantity: 3,
    description: 'GSV1000-80',
    status: '',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "SGPN25x100",
    productName: "SGPN 25x100",
    quantity: 12,
    description: 'B15  NT21045F 1 긴급',
    status: 'RUNNING',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "RK32x120미즈미",
    productName: "RK 32x120 미즈미",
    quantity: 7,
    description: '',
    status: 'PAUSE',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "RK32x150INCH",
    productName: "RK 32x150 INCH",
    quantity: 6,
    description: '',
    status: '',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "MYKP32x150INCH",
    productName: "MYKP 32x150 INCH",
    quantity: 9,
    description: 'NT21045F-1, AV-S52',
    status: 'RUNNING',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "BGP38x150INCH",
    productName: "BGP 38x150 INCH",
    quantity: 14,
    description: '',
    status: 'PAUSE',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "SGPH25x110",
    productName: "SGPH 25x110",
    quantity: 4,
    description: '',
    status: '',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "SGPH13x65",
    productName: "SGPH 13x65",
    quantity: 12,
    description: '',
    status: '',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "SGBT13x25",
    productName: "SGBT 13x25",
    quantity: 24,
    description: '',
    status: '',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "SGOH25x90",
    productName: "SGOH 25x90",
    quantity: 8,
    description: 'B13',
    status: '',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "SGBT25x22",
    productName: "SGBT 25x22",
    quantity: 16,
    description: '',
    status: '',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "MYAK38x100INCH",
    productName: "MYAK 38x100 INCH",
    quantity: 4,
    description: '상홀더H=45',
    status: '',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "MYKP32x80INCH",
    productName: "MYKP 32x80 INCH",
    quantity: 4,
    description: '상홀더H=35',
    status: '',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "RK38x220INCH",
    productName: "RK 38x220 INCH",
    quantity: 2,
    description: '압입부길이25,BUSH만제외',
    status: '',
  ),
];

Icon getManufactureIcon(String status) {
  if (status == 'RUNNING') {
    return Icon(
      Icons.play_arrow_rounded,
      color: Colors.white,
    );
  } else if (status == 'PAUSE') {
    return Icon(
      Icons.pause,
      color: Colors.white,
    );
  } else {
    return Icon(
      Icons.stop,
      color: Colors.white,
    );
  }
}

Color getManufactureColor(String status) {
  if (status == 'RUNNING') {
    return Color(0xFF00D97C);
  } else if (status == 'PAUSE') {
    return Color(0xFFD91000);
  } else {
    return Color(0xFF005DD9);
  }
}
