import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  //How an asynchronous request to get data works
  void getData() async {


    //simulate a network request from a username db
    //await keyword used to tell the function to wait 
    //till this function is complete
    //to run the next line of code
    String username = await Future.delayed(Duration(seconds: 3), (){
      return 'Kavengi';
    });

    //Simulate network request to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), (){
      return 'Future gf and wife';
    });

    print('$username - $bio');
  }

  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
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
      body: Center(
        child: RaisedButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text("Counter is $counter"),
        ),
      ),
    );
  }
}