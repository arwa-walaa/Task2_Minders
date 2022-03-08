import 'employee.dart';
import 'person.dart';
import 'task.dart';

class Manager extends Person {
  var employees = <Employee>[];
  int? numOfEmployees;
 
  Manager.All(String? name, int? age, int? phone, double? salary,
      String? section, bool? attend)
      : super.All(name, age, phone, salary, section, attend) {
    numOfEmployees = employees.length;
  }

  addTask(Task task, Employee employee) {
    if (employees.contains(employee)) {
      employee.tasks.add(task);
    } else {
      print('this employee dose not exist ');
    }
  }

  void showAllEmpolyees() {
    for (var i = 0; i < employees.length; i++) {
      print('Name :  ${employees[i].Name}');
      print('Age :  ${employees[i].Age}');
      print('Phone :  ${employees[i].Phone}');
      print('Salary :  ${employees[i].Salary}');
      print('Section :  ${employees[i].Section}');
      print('Attend :  ${employees[i].IsAttend}');

      employees[i].showTasks();
      employees[i].showCompliteTasks();
      print('*****************************************************');
    }
  }
}
