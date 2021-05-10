import 'package:get/get.dart';
import 'package:prototype_app/screens/add_todo/add_todo_screen.dart';
import 'package:prototype_app/screens/alarm/alarm_screen.dart';
import 'package:prototype_app/screens/chats/component/ManufactureList.dart';
import 'package:prototype_app/screens/todo_list/todo_list_screen.dart';

class RouteBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => TodoListScreen());
    Get.lazyPut(() => AlarmScreen());
    Get.lazyPut(() => AddTodoScreen());
  }
}
