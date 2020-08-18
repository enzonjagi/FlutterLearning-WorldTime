import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location;//Location name for the UI
  String time; //time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint
  bool isDayTime; //True if day false otherwise

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {

    //try and catch block for catching errors
    try{

      //getting data from an endpoint using the (get) function from (http) package
    //data is then stored in the (response) object of type (Response)
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = json.decode(response.body);
    //print(data);

    //get properties from data
    String utc_datetime = data['utc_datetime'];
    String datetime = data['datetime'];

    String offset = data['utc_offset'].substring(1,3);

    /*print(datetime);
    print(utc_datetime);
    print(offset);*/

    //create a datetime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));



    //set the time property
    isDayTime = now.hour > 6 && now.hour < 20 ? true: false;
    //format time into readable form using the intl package
    time = DateFormat.jm().format(now);

    }
    catch(e){
      print ('caught error: $e');
      time = 'could not get time data';

    }

    


  }

}

