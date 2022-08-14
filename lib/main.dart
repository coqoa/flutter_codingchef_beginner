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
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart), 
            onPressed: () { 
              print('쇼핑카트 터치 했음'); 
            },
          ),
          IconButton(
            icon: Icon(Icons.search), 
            onPressed: () { 
              print('검색 터치 했음'); 
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/COQOA.jpeg'),
                backgroundColor: Colors.white,
                
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/POMOTODO.png'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/POMOTODO.png'),
                //   backgroundColor: Colors.white,
                // ),
              ],

              accountName: Text('최병민'),
              accountEmail: Text('coqoa28@gmail.com'),
              onDetailsPressed:(){
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.orange[500],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
                color: Colors.grey[800],
              ),
              title: Text('Home'),
              onTap: (){
                print('Home is Clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[800],
              ),
              title: Text('Settings'),
              onTap: (){
                print('Settings is Clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.grey[800],
              ),
              title: Text('Q&A'),
              onTap: (){
                print('Q&A is Clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}