class Manufacture {
  final String date;
  final String productId;
  final String productName;
  final double quantity;
  final String description;

  Manufacture({
    this.date = '',
    this.productId = '',
    this.productName = '',
    this.quantity = 0,
    this.description = '',
  });
}

List manufactureData = [
  Manufacture(
    date: "2021-05-03",
    productId: "SGHZ25x25",
    productName: "SGHZ 25x25",
    quantity: 4,
    description: 'NT발주, 마킹 : K2P00250001',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "LBB32x100INCH",
    productName: "LBB 32x100 INCH",
    quantity: 8,
    description: 'LBB80(외경43), 압입부35(0.07)/리테제외/염욕',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "SGPR25x100",
    productName: "SGPR 25x100",
    quantity: 3,
    description: 'GSV1000-80',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "SGPN25x100",
    productName: "SGPN 25x100",
    quantity: 12,
    description: 'B15  NT21045F 1 긴급',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "RK32x120미즈미",
    productName: "RK 32x120 미즈미",
    quantity: 7,
    description: '',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "RK32x150INCH",
    productName: "RK 32x150 INCH",
    quantity: 6,
    description: '',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "MYKP32x150INCH",
    productName: "MYKP 32x150 INCH",
    quantity: 9,
    description: 'NT21045F-1, AV-S52',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "BGP38x150INCH",
    productName: "BGP 38x150 INCH",
    quantity: 14,
    description: '',
  ),
  Manufacture(
    date: "2021-05-03",
    productId: "SGPH25x110",
    productName: "SGPH 25x110",
    quantity: 4,
    description: '',
  ),
];
