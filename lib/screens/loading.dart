import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_codingchef_beginner/data/my_location.dart';
import 'package:flutter_codingchef_beginner/data/network.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  double? latitude3;
  double? longitude3;

  void getLocation()async{
    // MyLocation().getMyCurrentLocation();
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    latitude3=myLocation.latitude2;
    longitude3=myLocation.longitude2;
    print(latitude3);
    print(longitude3);
    // my_location 파일로 옮김
    // try{
    //   LocationPermission permission = await Geolocator.requestPermission();
    //   Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    //   latitude2 = position.latitude;
    //   longitude2 = position.longitude;
    //   print('location = ${position}');
    //   print('latitude = $latitude2');
    //   print('longitude = $longitude2');
    // }
    // catch(e){
    //   print(e);
    //   print('문제가 발생했습니다');
    Network network = Network('https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1');
    
    var weatherData = await network.getJsonData();
    print(weatherData);
    }

  // void fetchData()async{
  //   // http.Response response = await http.get(Uri.parse('https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1'));
  //   // if(response.statusCode == 200){
  //   //   String jsonData = response.body;
  //   //   var parsingData = jsonDecode(jsonData);
  //     // print('weather description = ${parsingData["weather"][0]["description"]}');
  //     // print('wind speed = ${parsingData["wind"]["speed"]}');
  //     // print('id = ${parsingData["id"]}');
  //   // }else{
  //   //   print(response.statusCode);
  //   // }
  // }

  @override
  void initState() {
    super.initState();
    getLocation();
    // fetchData();
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
