import 'package:flutter/material.dart';

class TaskTiles extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function(bool?) checkBoxCallback;

  TaskTiles({
    required this.isChecked,
    required this.title,
    required this.checkBoxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "$title",
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.yellow.shade900,
        onChanged: checkBoxCallback,
      ),
    );
  }
}
