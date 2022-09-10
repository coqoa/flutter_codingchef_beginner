import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 스크린 컨트롤러로 화면 위치에 따른 작업 수행
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test"),
      ),
      body: MaterialApp(
        title: '타이틀', // 
        theme: ThemeData( // 앱의 기본적인 테마 지정
          primarySwatch: Colors.red
        ),
        home: CustomWidget(),
      )
    );
  }
}
class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Text('정렬 예제', style: TextStyle(fontSize: 14,color: Colors.black),),
        SizedBox(height: 10,),
        Text('MainAxisAlignment.start', style: TextStyle(fontSize: 14,color: Colors.black),),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(width: 50,height: 50, color: Colors.red[100]),
            Container(width: 50,height: 50, color: Colors.red[300]),
            Container(width: 50,height: 50, color: Colors.red[500]),
          ],
        ),
        SizedBox(height: 10,),
        Text('MainAxisAlignment.center', style: TextStyle(fontSize: 14,color: Colors.black),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 50,height: 50, color: Colors.blue[100]),
            Container(width: 50,height: 50, color: Colors.blue[300]),
            Container(width: 50,height: 50, color: Colors.blue[500]),
          ],
        ),
        SizedBox(height: 10,),
        Text('MainAxisAlignment.end', style: TextStyle(fontSize: 14,color: Colors.black),),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(width: 50,height: 50, color: Colors.green[100]),
            Container(width: 50,height: 50, color: Colors.green[300]),
            Container(width: 50,height: 50, color: Colors.green[500]),
          ],
        ),
        SizedBox(height: 10,),
        Text('MainAxisAlignment.spaceAround', style: TextStyle(fontSize: 14,color: Colors.black),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(width: 50,height: 50, color: Colors.pink[100]),
            Container(width: 50,height: 50, color: Colors.pink[300]),
            Container(width: 50,height: 50, color: Colors.pink[500]),
          ],
        ),
        SizedBox(height: 10,),
        Text('MainAxisAlignment.spaceBetween', style: TextStyle(fontSize: 14,color: Colors.black),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(width: 50,height: 50, color: Colors.orange[100]),
            Container(width: 50,height: 50, color: Colors.orange[300]),
            Container(width: 50,height: 50, color: Colors.orange[500]),
          ],
        ),
        SizedBox(height: 10,),
        Text('MainAxisAlignment.spaceEvenly', style: TextStyle(fontSize: 14,color: Colors.black),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: 50,height: 50, color: Colors.purple[100]),
            Container(width: 50,height: 50, color: Colors.purple[300]),
            Container(width: 50,height: 50, color: Colors.purple[500]),
          ],
        ),
        ],
      )
    );
  }
}
