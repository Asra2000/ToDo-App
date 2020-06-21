import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tile_view.dart';
import '../widgets/data.dart';

class Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context, data, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onLongPress: () {
              data.delete(index);
            },
            child: TaskList(
              taskText: data.tasks[index].name,
              checked: data.tasks[index].isDone,
              index: index,
            ),
          );
        },
        itemCount: data.tasks.length,
      );
    });
  }
}
