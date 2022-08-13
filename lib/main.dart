import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'AppBar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Icon Menu'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu), 
          onPressed: () { 
            print('메뉴 클릭 했음'); 
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart), 
            onPressed: () { 
              print('쇼핑카트 클릭 했음'); 
            },
          ),
          IconButton(
            icon: Icon(Icons.search), 
            onPressed: () { 
              print('검색 클릭 했음'); 
            },
          ),
        ],
      ),
    );
  }
}