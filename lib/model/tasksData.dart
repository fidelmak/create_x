import 'package:create_x/model/tasks.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(name: "Eat"),
    Task(name: "code"),
    Task(name: "read book"),
  ];
  List<Task> get task {
    return _task;
  }

  int get taskCounter {
    return _task.length;
  }

  void addmyTask(String newTask) {
    final tasks = Task(name: newTask);
    _task.add(tasks);
    notifyListeners();
  }
}
