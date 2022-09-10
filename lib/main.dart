import 'package:flutter/material.dart';
import 'package:flutter_codingchef_beginner/screens/main_screen.dart';
import 'package:flutter_codingchef_beginner/test.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      // home: LoginSignupScreen(),
      home: TestWidget(),////////////////??////////////////??////////////////??////////////////??
    );
  }
}

// 순한맛 복습용 메모장//-------------------------------------------
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "타이틀", // 앱을 총칭하는 이름
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}
// 앱 기능이 늘어나고 코드가 늘어나면 가독성, 효율성, 유지보수 용이성을 위해
// 조각화하는게 중요함
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 코드 작성 ..
      appBar: AppBar(
        title: Text('AppBarTitle'), // AppBar에서 출력되는 이름
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('텍스트1'),
            Container(width: 10, height: 10, color: Colors.red,),
            Text('텍스트2'),
            Container(width: 10, height: 10, color: Colors.blue,),
            Text('텍스트3'),
            Container(width: 10, height: 10, color: Colors.green,),
          ],
        ),
      ),
    );
  }
}