import 'package:flutter/material.dart';
import 'package:WorldTime/Services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Johannesburg', flag: 'southafrica.png', url: 'Africa/Johannesburg' );
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
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
        child: Text(time),
      ),
    );
  }
}