import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key, this.parseWeatherData}) : super(key: key);

  final parseWeatherData;

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  String? cityName;
  double? temp;

  @override
  void initState() {
    super.initState();
    // widget객체로 statefulWidget의 데이터 가져오기
    // 이 부분부터 아래부분 복습
    updateData(widget.parseWeatherData);
  }
  void updateData(dynamic weatherData){
    cityName = weatherData['name'];
    temp = weatherData['main']['temp'];
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('${cityName}',
                style: TextStyle(
                  fontSize: 30.0
                ),
              ),
              SizedBox(height: 10.0),
              Text('${temp}\'c',
                style: TextStyle(
                  fontSize: 30.0
                  ),
              )
            ],
          ),
        )
      ),
    );
  }
}