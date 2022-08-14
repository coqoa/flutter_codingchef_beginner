import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Containers',
      home: MyPage(),
    );
  }
}
class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      // SafeArea()를 통해 컨텐츠가 스크린 밖으로 빠져나가지 않도록 경계를 쳐준다
      body: SafeArea(
        child: Row(

          // 가로축 end 위치로 정렬
          mainAxisAlignment: MainAxisAlignment.end,
          
          // 각 컨테이너의 height를 없애면 화면 세로 길이만큼 늘림
          // crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            // SizedBox를 통해 컨테이너간 간격을 설정할 수 있음
            // SizedBox(
            //   width: 30.0,
            // ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
            // crossAxisAlignment와 invisible Container를 사용해서 모든 컨테이너를 우측 배치
            Container(
              // 가로축 끝까지 확장
              height: double.infinity,
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}

