import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  /*Void means  that the function returns nothing*/

    void getData() async{

    // simulating network request for username
    //Duration object takes in two arguments.
    //Duration is very similar to setTimeOut in Javascript
    String username =await Future.delayed(Duration(seconds: 3), (){
      return 'Caleb';
    });

    //simulate network request to get Bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), (){
      return 'guitarist, programming Ninja & Born again';
    });

    print('$username - $bio');
  }

  int counter =0;
  @override
  void initState() {
    print('initState lifecycle method ran');
    super.initState();
    getData();
    print('Hey there!');
  }
  @override
  Widget build(BuildContext context) {
    print('buildState lifecycle method ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}
