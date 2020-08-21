import 'package:WorldTime/Services/world_time.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  //How an asynchronous request to get data works
  List<WorldTime> locations = [

    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Africa/Johannesburg', location: 'Johannesburg', flag: 'southafrica.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'Africa/Kampala', location: 'Kampala', flag: 'uganda.png'),
    WorldTime(url: 'Asia/Beijing', location: 'Beijing', flag: 'china.png'),
    WorldTime(url: 'Australia/Melbourne', location: 'Melbourne', flag: 'australia.png'),
    WorldTime(url: 'Africa/Abuja', location: 'Abuja', flag: 'nigeria.png'),
    WorldTime(url: 'Africa/Lagos', location: 'Lagos', flag: 'nigeria.png'),

  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];

    await instance.getTime();
    //navigate to home screen
    //pass the data to the homescreen
    //location, daytime background, flag
    //pop the choose location screen
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime
    }); 

  }
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose a location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical:1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                )
              ),
            ),
          );
        }
      ),
      
    );
  }
}