import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/widgets/data.dart';

class TaskList extends StatelessWidget {
  final bool checked;
  final String taskText;
  final int index;
  TaskList({this.checked, this.taskText, this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskText,
        style: TextStyle(
            decoration:
                checked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
          value: checked,
          onChanged: (bool value){
            Provider.of<Data>(context, listen: false ).toggle(index);
          },
          checkColor: Colors.white,
          activeColor: Colors.lightBlueAccent,
        ),
      );
  }
}

