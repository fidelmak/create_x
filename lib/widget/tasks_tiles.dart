import 'package:flutter/material.dart';

class TaskTiles extends StatefulWidget {
  @override
  State<TaskTiles> createState() => _TaskTilesState();
}

class _TaskTilesState extends State<TaskTiles> {
  bool isChecked = true;
   checkBoxCallBack ( bool checkBoxState) {
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
      trailing: CheckState(isChecked, checkBoxCallBack),
    );
  }
}

class CheckState extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckBoxState;
  CheckState(this.checkBoxState, this.toggleCheckBoxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      onChanged: toggleCheckBoxState;
    );
  }
}
