import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void getData() async {

    //getting data from an endpoint using the (get) function from (http) package
    //data is then stored in the (response) object of type (Response)
    Response response = await get('https://jsonplaceholder.typicode.com/todos/1');

    //converting json data received above into usable form(map)
    Map data = jsonDecode(response.body);
    print(data);
    //print the title property from the data
    print(data['title']);
  }

  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading Screen"),
    );
  }
}