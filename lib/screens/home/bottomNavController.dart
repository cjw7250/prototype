 import 'package:get/get.dart';

class BottomNavController extends GetxController{
  var tabIndex = 0;

  void changeBottomNav(int index){
    tabIndex = index;
    update();
  }
}