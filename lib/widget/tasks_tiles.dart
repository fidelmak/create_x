import 'package:flutter/material.dart';

class TaskTiles extends StatefulWidget {
  @override
  State<TaskTiles> createState() => _TaskTilesState();
}

class _TaskTilesState extends State<TaskTiles> {
  bool isChecked = true;

  void clickCheck(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "This is a Task ",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: CheckState(
        checkBoxState: isChecked,
        toggleCheck: clickCheck,
      ),
    );
  }
}

class CheckState extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheck;
  CheckState({required this.toggleCheck, required this.checkBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: checkBoxState, onChanged: toggleCheck());
  }
}
