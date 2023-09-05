import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  String? newTask = "";

  final Function addTaskCallback;
  AddTaskScreen({required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        ),
        child: Container(
          margin: EdgeInsets.all(24),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                      textAlign: TextAlign.center,
                      "Add Task",
                      style: TextStyle(
                          color: Colors.yellow.shade900, fontSize: 30)),
                  TextField(
                      onChanged: (value) {
                        newTask = value;
                      },
                      autofocus: true,
                      controller: TextEditingController(text: newTask),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        fillColor: Colors.yellow.shade900,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          addTaskCallback(newTask);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow.shade900, // background
                          // foreground
                        ),
                        child: Text("Add",
                            style:
                                TextStyle(color: Colors.white, fontSize: 24))),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
