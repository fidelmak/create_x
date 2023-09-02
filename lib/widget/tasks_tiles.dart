import 'package:flutter/material.dart';

class TaskTiles extends StatefulWidget {
  @override
  State<TaskTiles> createState() => _TaskTilesState();
}

class _TaskTilesState extends State<TaskTiles> {
  bool isChecked = false;

  void checkBoxCallback(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  void boon(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        isChecked = checkBoxState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "This is a Task ",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(checkBoxCallback: isChecked, toggleCheck: boon),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkBoxCallback;
  final Function(bool?) toggleCheck;
  TaskCheckbox({required this.toggleCheck, required this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: checkBoxCallback, onChanged: toggleCheck);
  }
}
