import 'person.dart';
import 'task.dart';

class Employee extends Person {
  var tasks = <Task>[];
  var CompliteTasks = <Task>[];

  
  Employee.All(String? name, int? age, int? phone, double? salary,
      String? section, bool? attend)
      : super.All(name, age, phone, salary, section, attend);

  void deliverTask(Task task) {
    task.isDelivered = true;
   
    CompliteTasks.add(task);
    tasks.remove(task);
    print(tasks.length);
  }

  void showTasks() {
    for (var i = 0; i < tasks.length; i++) {
      print('the task is : ${tasks[i].task}');
      print('task not delivered ');
      print('------------------------------------------');
    }
  }

  void showCompliteTasks() {
    for (var i = 0; i < CompliteTasks.length; i++) {
      print('the task is : ${CompliteTasks[i].task}');
      print('task delivered ');
      print('------------------------------------------');
    }
  }
}
