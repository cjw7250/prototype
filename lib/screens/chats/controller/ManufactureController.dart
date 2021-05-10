import 'package:get/get.dart';
import 'package:prototype_app/data/Manufacture.dart';

class ManufactureController extends GetxController {
  List rxList = manufactureData.obs;

  changeRow(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final int item = rxList.removeAt(oldIndex);
    rxList.insert(newIndex, item);
  }
}
