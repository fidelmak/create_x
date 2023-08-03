import 'package:flutter/material.dart';

import '../widget/task_widget.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
              Text("12 task ",
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
              child: TaskWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
