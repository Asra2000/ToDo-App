import 'package:flutter/foundation.dart';
import '../model/task.dart';
import 'dart:collection';

class Data extends ChangeNotifier{
//  any change in this can be made only using function
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Sing song'),
  ];
//  getter function
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
 void addTasks(String task){
   _tasks.add(Task(name: task));
   notifyListeners();
 }
 void toggle(int index){
   _tasks[index].toggleData();
   notifyListeners();
 }
 void delete(int index){
    _tasks.removeAt(index);
    notifyListeners();
 }
}