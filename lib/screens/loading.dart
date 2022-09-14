import 'package:flutter/material.dart';
import 'package:flutter_codingchef_beginner/data/my_location.dart';
import 'package:flutter_codingchef_beginner/data/network.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  double? latitude;
  double? longitude;
  @override
  void initState() {

    super.initState();
    getLocation();
  }
  void getLocation() async{
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    latitude = myLocation.latitude;
    longitude = myLocation.longitude;
    print(latitude);
    print(longitude);

    Network network = Network('https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1');
    var weatherData = await network.getJsonData();
    print(weatherData);

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