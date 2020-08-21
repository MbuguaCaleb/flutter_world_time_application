import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{

  String location ;//location name for the UI
  String time; //the time in that location
  String flag; //url to an assets flag icon
  String url ;//the location url for API Endpoints
  bool isDayTime; //true or false if daytime or not.

  //creating the constructor with named parameters
  WorldTime ({this.location, this.flag,this.url});

  /*Future is the declaration for an async type function */
  Future<void> getTime() async{

    try{
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
      //format date via intl package

      //ternary operator
      isDayTime = now.hour > 6 && now.hour < 21 ? true : false;

      time = DateFormat.jm().format(now);

    }catch(e){
      print('caught error: $e');
      time = 'time data could not be set';
    }

  }

  /*A class is like a function in terms of re usability but it can hold much much more*/

}