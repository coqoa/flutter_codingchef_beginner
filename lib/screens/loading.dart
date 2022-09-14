import 'package:flutter/material.dart';
import 'package:flutter_codingchef_beginner/data/my_location.dart';
import 'package:flutter_codingchef_beginner/data/network.dart';
import 'package:flutter_codingchef_beginner/screens/weather_screen.dart';
const apiKey = '0d0cc1131b44cd6ea0027e60e69dc007';

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

    Network network = Network('https://api.openweathermap.org/data/2.5/weather'
        '?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric');
    var weatherData = await network.getJsonData();
    print(weatherData);
    // {coord: {lon: 127.1441, lat: 37.5272}, weather: [{id: 800, main: Clear, description: clear sky, icon: 01n}], base: stations, main: {temp: 22.68, feels_like: 22.78, temp_min: 19.55, temp_max: 23.89, pressure: 1016, humidity: 68}, visibility: 10000, wind: {speed: 1.03, deg: 40}, clouds: {all: 0}, dt: 1663168587, sys: {type: 1, id: 5509, country: KR, sunrise: 1663189978, sunset: 1663234857}, timezone: 32400, id: 6800397, name: P’ungnap-tong, cod: 200}
    print(weatherData['name']);

    Navigator.push(context, MaterialPageRoute(builder: (context){
      return WeatherScreen(parseWeatherData: weatherData,);
    }));

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