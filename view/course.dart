import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:studentcourses/main.dart';
import 'package:studentcourses/model/coursemodel.dart';


Future<Courses> createPost(String apiurl,{Map data}) async{
  return http.post(apiurl, body:data).then((http.Response response){
    final int statuscode=response.statusCode;
    if(statuscode!=200)
    {
      throw new Exception("exception occured");
    }
    print(response.body);
    return (json.decode(response.body));
  });
}
class Course extends StatelessWidget {
  TextEditingController Studentid=TextEditingController();
  TextEditingController Coursename=TextEditingController();
  TextEditingController Coursefee=TextEditingController();
  TextEditingController instructorname=TextEditingController();
  TextEditingController duration=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("course info", style: TextStyle(color: Colors.blue),),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              TextField(
                controller: Studentid,
                decoration: InputDecoration(
                  hintText: "student id"
                ),
              ),
              TextField(
                controller: Coursename,
                decoration: InputDecoration(
                    hintText: "course name"
                ),
              ),
              TextField(
                controller: Coursefee,
                decoration: InputDecoration(
                    hintText: "course fee"
                ),
              ),
              TextField(
                controller: instructorname,
                decoration: InputDecoration(
                    hintText: "instructor name"
                ),
              ),
              TextField(
                controller: duration,
                decoration: InputDecoration(
                    hintText: "Duration"
                ),
              ),
            RaisedButton(
              onPressed: () async{
              Courses detail=new Courses(
                  studentid:Studentid.text,
                  coursename:Coursename.text,
                  coursefee:Coursefee.text,
                  instructorname:instructorname.text,
                  duration:duration.text
              );

              Courses mydata= await createPost('https://studentcoursemongodb.herokuapp.com/course/course',
                  data: detail.toJson());
              print(mydata);
              },
              color: Colors.brown,
              child: Text("SUBMIT"),
            ),
            RaisedButton(
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Studentapp()));
              },
              color: Colors.limeAccent,
              child: Text("Back to Menu"),
            )

            ],
          ),
        ),
      ),
    );
  }
}
