import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {

  String location;//Location name for the UI
  String time; //time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {

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
    time = now.toString();


  }

}

