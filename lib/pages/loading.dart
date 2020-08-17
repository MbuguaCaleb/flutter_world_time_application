import 'package:flutter/material.dart';
import 'package:flutter_world_time_application/services/world_time.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Kenya',flag:"kenya.png",url:'Africa/Nairobi');
    await instance.getTime();
    /*redirecting to another route once the data has been loaded*/
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location':instance.location,
      'flag':instance.flag,
      'time':instance.time
    });
  }
  @override
  void initState() {
    super.initState();
    setupWorldTime() ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
       padding: EdgeInsets.all(50.0),
        child: Text('loading'),
      ),
    );
  }
}
