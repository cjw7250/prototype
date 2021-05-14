import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prototype_app/constants.dart';
import 'package:prototype_app/controller/product_controller.dart';
import 'package:prototype_app/screens/find_product/find_product_screen.dart';
import 'package:prototype_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProductController());

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                kDefaultPadding, kDefaultPadding, kDefaultPadding, 0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: kPrimaryColor,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Expanded(
                  //   child: Container(
                  //     padding: EdgeInsets.symmetric(
                  //       horizontal: 10,
                  //     ),
                  //     child: Text(
                  //       '품명',
                  //       style: TextStyle(
                  //         fontSize: getProportionateScreenWidth(25),
                  //         fontWeight: FontWeight.bold,
                  //         color: Colors.grey,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: kPrimaryColor,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Obx(
                        () => TextFormField(
                          readOnly: true,
                          initialValue:
                              '${Get.find<ProductController>().product.value.productName}',
                          decoration: InputDecoration(
                            hintText: '품명',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(25),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(0),
                    child: TextButton(
                      onPressed: () {
                        Get.to(
                          FindProductScreen(),
                          transition: Transition.rightToLeft,
                        );
                      },
                      child: Text(
                        '품목 찾기',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(25),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                kDefaultPadding, kDefaultPadding, kDefaultPadding, 0),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: kPrimaryColor,
                ),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: '수량',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(25),
                      ),
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(25),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                kDefaultPadding, kDefaultPadding, kDefaultPadding, 0),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: kPrimaryColor,
                ),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: '수량',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(25),
                      ),
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(25),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                kDefaultPadding, kDefaultPadding, kDefaultPadding, 0),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: kPrimaryColor,
                ),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: '수량',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(25),
                      ),
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(25),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                kDefaultPadding, kDefaultPadding, kDefaultPadding, 0),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: kPrimaryColor,
                ),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: '수량',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(25),
                      ),
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(25),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                kDefaultPadding, kDefaultPadding, kDefaultPadding, 0),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: kPrimaryColor,
                ),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: '수량',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(25),
                      ),
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(25),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                kDefaultPadding, kDefaultPadding, kDefaultPadding, 0),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: kPrimaryColor,
                ),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: '수량',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(25),
                      ),
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(25),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                kDefaultPadding, kDefaultPadding, kDefaultPadding, 0),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: kPrimaryColor,
                ),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: '수량',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(25),
                      ),
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(25),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
