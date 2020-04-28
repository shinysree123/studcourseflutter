import 'package:flutter/material.dart';
import 'package:studentcourses/view/course.dart';
//import 'package:studentcourses/view/student.dart';

void main(){
  runApp(Studentapp());
}
class Studentapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("first screen",style: TextStyle(color: Colors.amber),),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: (){
//                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Student()));
                },
                color: Colors.lightGreen,
                child: Text("add student"),

              ),
              RaisedButton(
                child: Text("add courses"),
                onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Course()));
                })
            ],
          ),
        ),
      ),
    );
  }
}
