import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prototype_app/constants.dart';
import 'package:prototype_app/controller/product_controller.dart';
import 'package:prototype_app/data/Product.dart';
import 'package:prototype_app/screens/add_todo/add_todo_screen.dart';
import 'package:prototype_app/size_config.dart';
import 'package:sticky_headers/sticky_headers.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProductController());
    getSortByFirstWord();
    Map<String, List<Product>> groupByList = getListGroupByFirstWord();

    return Column(
      children: [
        Container(
          width: double.maxFinite,
          color: kPrimaryColor,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: '제품 검색',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: groupByList.length,
            itemBuilder: (context, index) {
              String key = groupByList.keys.elementAt(index);
              List<Product> values = groupByList.values.elementAt(index);
              return StickyHeader(
                overlapHeaders: false,
                header: Container(
                  width: double.maxFinite,
                  color: Colors.grey,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      key,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(15),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(
                      values.length,
                      (index) => InkWell(
                        child: Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(7.5),
                            child: Text(
                              '${values[index].productName}',
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(20),
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Get.offAll(
                            AddTodoScreen(),
                            transition: Transition.leftToRight,
                            arguments: Get.find<ProductController>()
                                .getProduct(values[index]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
