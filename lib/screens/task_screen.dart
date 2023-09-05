import 'package:flutter/material.dart';

import '../model/tasks.dart';
import '../widget/task_widget.dart';
import 'add_task.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

//Widget buildBottomSheet;

class _TaskScreenState extends State<TaskScreen> {
  List<Task> task = [
    Task(name: "Eat"),
    Task(name: "code"),
    Task(name: "read book"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(
                    addTaskCallback: (newTask) {
                      setState(() {
                        task.add(Task(name: newTask));
                        Navigator.pop(context);
                      });
                    },
                  ));
        },
        backgroundColor: Colors.yellow.shade900,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.yellow.shade900,
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                "create_x",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("${task.length} task ",
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ]),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36))),
              child: TaskWidget(
                tasks: task,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
