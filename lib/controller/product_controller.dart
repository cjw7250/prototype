import 'package:get/get.dart';
import 'package:prototype_app/data/Product.dart';

class ProductController extends GetxController {
  final product = Product(
    productName: '',
  ).obs;

  Rx<Product> getProduct(Product paramProduct) {
    product.update((product) {
      product.productId = paramProduct.productId;
      product.productName = paramProduct.productName;
      product.firstWord = paramProduct.firstWord;
    });

    return product;
  }
}
