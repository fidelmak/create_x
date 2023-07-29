import 'package:flutter/material.dart';

import 'screens/task_screen.dart';

void main() {
  runApp(const CreateTask());
}

class CreateTask extends StatelessWidget {
  const CreateTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskScreen(),
    );
  }
}
