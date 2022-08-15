import 'package:flutter/material.dart';


class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA'),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            color: Colors.red,
            child: Text('Go to ScreenB'),
            onPressed: (){
              // pushNamed() : 각 페이지별로 붙여진 이름을 통해 위젯을 빌드하고 푸시한다
              Navigator.pushNamed(context, '/b');
            }
          ),
          RaisedButton(
            color: Colors.red,
            child: Text('Go to ScreenC'),
            onPressed: (){
              Navigator.pushNamed(context, '/c');
            }
          ),
        ],
        )
      ),
    );
  }
}