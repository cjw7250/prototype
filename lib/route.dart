import 'package:get/get.dart';
import 'package:prototype_app/screens/add_todo/addTodoScreen.dart';
import 'package:prototype_app/screens/alarm/alarmScreen.dart';
import 'package:prototype_app/screens/chats/component/ManufactureList.dart';
import 'package:prototype_app/screens/todo_list/todoListScreen.dart';

class RouteBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => TodoListScreen());
    Get.lazyPut(() => AlarmScreen());
    Get.lazyPut(() => AddTodoScreen());
  }
}
