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

  void getLocation()async{
    try{
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      print('location = ${position}');
    }
    catch(e){
      print(e);
      print('문제가 발생했습니다');
    }
  }

  void fetchData()async{
    http.Response response = await http.get(Uri.parse('https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1'));
    if(response.statusCode == 200){
      String jsonData = response.body;
      var myJson = jsonDecode(jsonData);
      print('weather description = ${myJson["weather"][0]["description"]}');
      print('wind speed = ${myJson["wind"]["speed"]}');
      print('id = ${myJson["id"]}');
    }else{
      print(response.body);
    }
  }

  @override
  void initState() {
    super.initState();
    getLocation();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // getLocation();
            },
            child: Text('Get My Location'),
            style: ElevatedButton.styleFrom(primary: Colors.redAccent)),
      ),
    );
  }
}
