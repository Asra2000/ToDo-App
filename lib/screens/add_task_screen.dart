import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/data.dart';

class AddScreen extends StatelessWidget {
//  final Function addTaskCallback;
//  AddScreen(this.addTaskCallback);
  final controller = TextEditingController();
  String newTask;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xca757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              Center(
                child: Text("Add Task",
                style: TextStyle(color: Color(0xFFB7918C), fontSize: 24.0)),
              ),
              TextField(
                  controller: controller,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (value){
                    newTask = value;
                  },
                  decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFB7918C), width: 3.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink, width: 3.0),
                  ),
                ),
              ),
            SizedBox(height: 20.0),
            RaisedButton(child: Text("Add"),
            onPressed: (){
                  controller.clear();
                  if (newTask != null)
                  Provider.of<Data>(context, listen: false).addTasks(newTask);
                  Navigator.pop(context);
            },
              animationDuration: Duration(seconds: 2),
            color: Color(0xFFB7918C),
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            splashColor: Colors.lightBlueAccent,
              ),
          ]),
        ),
      ),
    );
  }
}
