import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

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
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                      textAlign: TextAlign.center,
                      "Add Task",
                      style: TextStyle(
                          color: Colors.yellow.shade900, fontSize: 30)),
                  TextField(
                      autofocus: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        fillColor: Colors.yellow.shade900,
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow.shade900, // background
                        // foreground
                      ),
                      child: Text("Add",
                          style: TextStyle(color: Colors.white, fontSize: 24)))
                ]),
          ),
        ),
      ),
    );
  }
}
