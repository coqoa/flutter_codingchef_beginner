import 'package:flutter/material.dart';
import 'package:flutter_codingchef_beginner/ScreenA.dart';
import 'package:flutter_codingchef_beginner/ScreenB.dart';
import 'package:flutter_codingchef_beginner/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 화면에 가장 먼저 출력될 route를 지정하는 initialRoute,
      // 플러터에서는 첫 라우트의 이름을 /로 지정했기 때문에  String형식으로 /를 작성한다
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC()
      },
    );
  }
}
