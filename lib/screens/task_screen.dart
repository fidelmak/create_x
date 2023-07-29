import 'package:flutter/material.dart';

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
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          )
        ]),
      ),
    );
  }
}
