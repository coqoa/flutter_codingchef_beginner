import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {

    super.initState();
    getLocation();
    fetchData();
  }
  void getLocation() async{
    try{
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      print(position);
    }catch(e){
      print(e);
    }
  }

  void fetchData() async{
    http.Response response = await http.get(Uri.parse('https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1'));
    
    if(response.statusCode == 200){
      String jsonData = response.body;
      var myJson = jsonDecode(jsonData);
      print(myJson['weather'][0]['description']);
      //  light intensity drizzle
    }else{
      print(response.statusCode);

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){getLocation();},
          child: Text('Get My Location', style: TextStyle(color: Colors.white),),
          style: ElevatedButton.styleFrom(primary: Colors.blue),
        ),
      ),

    );
  }
}