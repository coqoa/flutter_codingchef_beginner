import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Scaffold Messenger'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextButton(
                onPressed: () {
                  print("textButton pressed");
                },
                onLongPress: () {
                  print("textButton long pressed");
                },
                child: Text(
                  'Text Button',
                  style: TextStyle(fontSize: 20.0),
                ),
                // 버튼 스타일 작성
                style: TextButton.styleFrom(
                    primary: Colors.red, backgroundColor: Colors.red[100]),
              ),

              ElevatedButton(
                onPressed: (){
                  print('ElevatedButton Pressed');
                },
                child: Text('ElevatedButton'),
                style: ElevatedButton.styleFrom(
                  // TextButton과는 다르게 primary가 배경색 조절 속성이다
                  primary: Colors.orangeAccent,
                  // 버튼 모양 디자인 속성
                  shape: RoundedRectangleBorder(
                    // border radius 조절
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  elevation: 0.0
                ),
              ),
              
              OutlinedButton(
                onPressed: (){
                  print('OutlinedButton Pressed');
                }, 
                child: Text('OutlinedButton'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.green,
                  // 버튼 외곽선 색상 변경
                  side: BorderSide(
                    color: Colors.green,
                    // width: 2.0
                  ),
                ),
              ),
              // 버튼 앞에 아이콘을 불러와야 할 경우?
              // TextButton, EelebatedButton, OulinedButton 동일함
              TextButton.icon(
                onPressed: (){
                  print('TextButtonIconPressed');
                }, 
                icon: Icon(Icons.home,
                size: 20.0,
                color: Colors.black), 
                label: Text('TextButtonIcon'),
                style: TextButton.styleFrom(
                  primary: Colors.purpleAccent,
                  minimumSize: Size(100, 100),
                  backgroundColor: Colors.pink[100],
                  // 비활성화된 버튼의 색상 변경 가능
                  onSurface: Colors.pink[300]
                ),
              ),
              TextButton.icon(
                // onPress를 비활성화 시키려면 null
                onPressed: null,
                icon: Icon(Icons.home,
                size: 20.0,
                color: Colors.black), 
                label: Text('비활성화 버튼'),
                style: TextButton.styleFrom(
                  primary: Colors.purpleAccent,
                  minimumSize: Size(100, 100),
                  backgroundColor: Colors.purple[100],
                  // 비활성화된 버튼의 색상 변경 가능
                  onSurface: Colors.purple[900]
                ),
              ),
              
              // 버튼을 가로 방향 끝에 정렬 해주는 위젯, 가로방향으로 공간이 부족하면 세로방향으로 정렬해준다
              ButtonBar(
                alignment: MainAxisAlignment.center,
                buttonPadding: EdgeInsets.all(20.0),
                children: [
                  TextButton(onPressed: (){}, child: Text('ButtonBar_TextBtn')),
                  ElevatedButton(onPressed: (){}, child: Text('ButtonBat_ElevatedBtn')),
                  OutlinedButton(onPressed: (){}, child: Text('ButtonBar_OutlinedBtn'))
                ],
              )
            ],
          ),
        )
      );
  }
}
