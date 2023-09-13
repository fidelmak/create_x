import 'package:create_x/model/tasksData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/task_screen.dart';

void main() {
  runApp(const CreateTask());
}

class CreateTask extends StatelessWidget {
  const CreateTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
