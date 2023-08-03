import 'package:create_x/widget/tasks_tiles.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      TaskTiles(),
      TaskTiles(),
      TaskTiles(),
      TaskTiles(),
    ]);
  }
}
