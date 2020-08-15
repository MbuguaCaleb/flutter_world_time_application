import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{

  String location ;//location name for the UI
  String time; //the time in that location
  String flag; //url to an assets flag icon
  String url ;//the location url for API Endpoints

  //creating the constructor with named parameters
  WorldTime ({this.location, this.flag,this.url});

  /*Future is the declaration for an async type function */
  Future<void> getTime() async{
    //make the request
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);

    //get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    //print(datetime);
    //print(offset);

    //Create a Datetime Object
    DateTime now = DateTime.parse(datetime);
    now =now.add(Duration(hours: int.parse(offset)));

    //set the time property
    //Remember that iam converting it into a string because it was initially an object
    time = now.toString();

  }


  /*A class is like a function in terms of re usability but it can hold much much more*/






}