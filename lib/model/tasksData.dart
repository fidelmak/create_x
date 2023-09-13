import 'dart:collection';

import 'package:create_x/model/tasks.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(name: "Eat"),
    Task(name: "code"),
    Task(name: "read book"),
  ];
  UnmodifiableListView<Task> get task => UnmodifiableListView(_task);

  int get taskCounter {
    return _task.length;
  }

  void addmyTask(String newTask) {
    //task.add(Task(name: "paulfidelis"));
    final tasks = Task(name: newTask);
    _task.add(tasks);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _task.remove(task);
    notifyListeners();
  }
}
