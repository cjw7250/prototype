import 'package:intl/intl.dart';
import 'package:collection/collection.dart';

class Product {
  String productId;
  String productName;
  String firstWord;

  Product({
    this.productId,
    this.productName,
    this.firstWord,
  });
}

List<Product> productData = [
  Product(
    productId: "BGP25DN",
    productName: "BGP 25하",
    firstWord: 'B',
  ),
  Product(
    productId: "BRPK45MI",
    productName: "BRPK 45 미즈미",
    firstWord: 'B',
  ),
  Product(
    productId: "E3335040",
    productName: "E33350 40",
    firstWord: 'E',
  ),
  Product(
    productId: "DSGP20",
    productName: "DSGP 20",
    firstWord: 'D',
  ),
  Product(
    productId: "DSGL38",
    productName: "DSGL 38",
    firstWord: 'D',
  ),
  Product(
    productId: "GPF0518",
    productName: "GPF05 18",
    firstWord: 'G',
  ),
  Product(
    productId: "GSPK32INCH",
    productName: "GSPK 32 INCH",
    firstWord: 'G',
  ),
  Product(
    productId: "GSRK25MM",
    productName: "GSRK 25 MM",
    firstWord: 'G',
  ),
  Product(
    productId: "LDB28",
    productName: "LDB 28",
    firstWord: 'L',
  ),
  Product(
    productId: "LGP25UP",
    productName: "LGP 25상 25",
    firstWord: 'L',
  ),
  Product(
    productId: "LGP50DN",
    productName: "LGP 50하 50",
    firstWord: 'L',
  ),
  Product(
    productId: "LPGP60",
    productName: "LPGP 60",
    firstWord: 'L',
  ),
  Product(
    productId: "MRP32MI",
    productName: "MRP 32 미즈미",
    firstWord: 'M',
  ),
  Product(
    productId: "MYAK45UPINCH",
    productName: "MYAK 45상 45 INCH",
    firstWord: 'M',
  ),
  Product(
    productId: "MYAKP60UPINCH",
    productName: "MYAKP 60상 60 INCH",
    firstWord: 'M',
  ),
  Product(
    productId: "MYZ32UP",
    productName: "MYZ 32상",
    firstWord: 'M',
  ),
  Product(
    productId: "RB25MI",
    productName: "RB 25 미즈미",
    firstWord: 'R',
  ),
  Product(
    productId: "RBB2235",
    productName: "RBB 22x35 MM",
    firstWord: 'R',
  ),
  Product(
    productId: "RD28MI",
    productName: "RD 28 미즈미",
    firstWord: 'R',
  ),
  Product(
    productId: "RK25SSL20",
    productName: "RK 25 삼성L20",
    firstWord: 'R',
  ),
  Product(
    productId: "SGBA30(40)",
    productName: "SGBA 30x40",
    firstWord: 'S',
  ),
  Product(
    productId: "SPP28",
    productName: "SPP 28",
    firstWord: 'S',
  ),
  Product(
    productId: "NSB7500",
    productName: "NSB7500",
    firstWord: 'N',
  ),
  Product(
    productId: "NC200CINS",
    productName: "NSC200 C-INS",
    firstWord: 'N',
  ),
  Product(
    productId: "NTT350CINS",
    productName: "NTT350 C-INS",
    firstWord: 'N',
  ),
  Product(
    productId: "N2500RN",
    productName: "N2500 R-N",
    firstWord: 'N',
  ),
  Product(
    productId: "NSC1500RN",
    productName: "NSC1500 R-N",
    firstWord: 'N',
  ),
  Product(
    productId: "BT2400RF",
    productName: "BT2400 R-F",
    firstWord: 'B',
  ),
  Product(
    productId: "NP10000CP",
    productName: "NP10000 C-INS",
    firstWord: 'N',
  ),
  Product(
    productId: "N200RQT",
    productName: "N200 R-QT",
    firstWord: 'N',
  ),
  Product(
    productId: "NC750(NB1000)COP",
    productName: "NC750(NB1000) CO-P",
    firstWord: 'N',
  ),
  Product(
    productId: "NPZ2000CIP",
    productName: "NPZ2000 C-IP",
    firstWord: 'N',
  ),
  Product(
    productId: "SM750P",
    productName: "SM750P",
    firstWord: 'S',
  ),
  Product(
    productId: "CEBA80",
    productName: "CEBA 80",
    firstWord: 'C',
  ),
  Product(
    productId: "E3336050",
    productName: "E33360 50",
    firstWord: 'E',
  ),
  Product(
    productId: "GPA15",
    productName: "GPA 15",
    firstWord: 'G',
  ),
  Product(
    productId: "SGPWH25",
    productName: "SGPWH 25",
    firstWord: 'S',
  ),
  Product(
    productId: "NT350CP",
    productName: "NT350 C-P",
    firstWord: 'N',
  ),
  Product(
    productId: "UPSTOP50L30",
    productName: "상스토퍼 50 삼성L30",
    firstWord: 'ㅅ',
  ),
];

void getSortByFirstWord() {
  productData.sort((a, b) => a.productName.compareTo(b.productName));
}

Map<String, List<Product>> getListGroupByFirstWord() {
  Map<String, List<Product>> groupByList =
      groupBy(productData, (product) => product.firstWord);
  return groupByList;
}
