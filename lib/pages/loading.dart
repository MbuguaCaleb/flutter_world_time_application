import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

    class _LoadingState extends State<Loading> {

    void getData() async{
    Response response = await get('https://jsonplaceholder.typicode.com/albums/1');
    /*converting it from a string to an object that we can be able to use*/
    /*This is because i have imported dart convert*/
    /*Therefore a Map is going to be returned*/
    /*When i say JSON Decode i am normally converting a String to an Object*/
    Map data =jsonDecode(response.body);
    print(data);
    print(data['title']);





  }

  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
