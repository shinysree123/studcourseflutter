//import 'package:flutter/material.dart';
//import 'package:studentcourses/main.dart';
//import 'package:studentcourses/view/course.dart';
//import 'dart:async';
//import 'package:http/http.dart' as http;
//
//Future<Stud>createPost(String apiurl,{Map,dataa}) async{
//  return http.post(apiurl,body: dataa).then((http.Response response){
//    final int statuscode= response.statusCode;
//    if(statuscode!=200)
//    {
//      throw new Exception("exception occured");
//
//    }
//    print(response.body);
//    return (json.decode(response.body));
//  });
//}
//
//class Student extends StatelessWidget {
//  TextEditingController  name=TextEditingController();
//  TextEditingController  email=TextEditingController();
//  TextEditingController  place=TextEditingController();
//  TextEditingController  phone=TextEditingController();
//  TextEditingController  pname=TextEditingController();
//  TextEditingController  pphone=TextEditingController();
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text("student registration",style: TextStyle(color: Colors.pink),),
//        ),
//        body: Container(
//          child: Column(
//            children: <Widget>[
//              TextField(
//                controller: name,
//                decoration: InputDecoration(
//                  hintText: "name"
//                ),
//              ),
//              TextField(
//                controller: email,
//                decoration: InputDecoration(
//                  hintText: "email id"
//                ),
//              ),
//              TextField(
//                controller: place,
//                decoration: InputDecoration(
//                  hintText: "place"
//                ),
//              ),
//              TextField(
//                controller: phone,
//                decoration: InputDecoration(
//                  hintText: "phone"
//                ),
//              ),
//              TextField(
//                controller: pname,
//                decoration: InputDecoration(
//                  hintText: "parent name"
//                ),
//              ),
//              TextField(
//                controller: pphone,
//                decoration: InputDecoration(
//                  hintText: "parent phone"
//                ),
//              ),
//              RaisedButton(
//                  onPressed: () async{
//                    Stud studdata= new Stud(
//                      name:name.text,
//                      email:email.text,
//                      place:place.text,
//                      phone:phone.text,
//                      parentname:pname.text,
//                        parentphone:pphone.text
//                    );
//                    //api call
//                    Stud mydata=await createPost('https://studentcoursemongodb.herokuapp.com/students',
//                        data: studdata.toJson());
//                    print(mydata);
//                  },,
//                color: Colors.amber,
//                child: Text("SUBMIT"),
//              ),
//              RaisedButton(
//                onPressed: (){
//                Navigator.push(context, MaterialPageRoute(builder: (context)=>Studentapp());
//                },
//                color: Colors.orangeAccent,
//                child: Text("Back to Menu"),
//              )
//            ],
//          ),
//        )
//        ),
//      ),
//    );
//  }
//}
