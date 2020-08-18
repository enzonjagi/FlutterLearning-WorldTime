import 'package:flutter/material.dart';
import 'package:WorldTime/Services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Johannesburg', flag: 'southafrica.png', url: 'Africa/Johannesburg' );
    await instance.getTime();

    //push and replace to the new route i.e the home page
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time
    });
  }

  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
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