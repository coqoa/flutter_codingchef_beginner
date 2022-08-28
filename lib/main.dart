// import 'package:flutter/material.dart';

// import 'dice.dart';
// import 'lifec.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(title: 'Dice game', home: LogIn());
//     // return const MaterialApp(title: 'Dice game', home: LIFEC());
//   }
// }

// class LogIn extends StatelessWidget {
//   const LogIn({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Sign In',
//           style: TextStyle(color: Colors.blue),
//         ),
//         centerTitle: true,
//         elevation: 0.2,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(6.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ButtonTheme(
//               height: 50.0,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Image.asset(
//                     'assets/POMOTODO.png',
//                     width: 50,
//                   ),
//                   Text(
//                     'Login with Google',
//                     style: TextStyle(color: Colors.black87, fontSize: 15.0),
//                   ),
//                   Opacity(
//                     opacity: 0.5,
//                     child: Image.asset(
//                       'assets/POMOTODO.png',
//                       width: 50,
//                     ),
//                   ),
//                 ],
//               ),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(4.0))),
//             ),
//             SizedBox(height: 10.0,),
//             ButtonTheme(
//               height: 50.0,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Image.asset(
//                     'assets/TAPTAP.png',
//                     width: 50,
//                   ),
//                   Text(
//                     'Login with Google',
//                     style: TextStyle(color: Colors.black87, fontSize: 15.0),
//                   ),
//                   Opacity(
//                     opacity: 0.5,
//                     child: Image.asset(
//                       'assets/TAPTAP.png',
//                       width: 50,
//                     ),
//                   ),
//                 ],
//               ),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(4.0))),
//             ),
//             SizedBox(height: 10.0,),
//             ButtonTheme(
//               height: 50.0,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Image.asset(
//                     'assets/JAVADOT.png',
//                     width: 50,
//                   ),
//                   Text(
//                     'Login with Google',
//                     style: TextStyle(color: Colors.black87, fontSize: 15.0),
//                   ),
//                   Opacity(
//                     opacity: 0.5,
//                     child: Image.asset(
//                       'assets/JAVADOT.png',
//                       width: 50,
//                     ),
//                   ),
//                 ],
//               ),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(4.0))),
//             ),

//           ],
//         ),
//       ),
//     );
//   }
// }

// ▲ 매운맛 수강 코드 ▲

// Life Cycle 예제
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'MyApp',
//       home: ScreenA(),
//     );
//   }
// }

// class ScreenA extends StatelessWidget {
//   const ScreenA({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ScreenA'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => ScreenB()));
//               },
//               child: Text('GO TO SCREEN B'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 print('c');
//               },
//               child: Text('GO TO SCREEN C'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ScreenB extends StatefulWidget {
//   const ScreenB({Key? key}) : super(key: key);

//   @override
//   State<ScreenB> createState() => _ScreenBState();
// }

// class _ScreenBState extends State<ScreenB> {
//   @override
//   void initState() {
//     // Stateful Widget을 생성해서 Widget Tree에 삽입되자마자 initState()가호출된다
//     super.initState();
//     print('----- Screen B InitState is Called -----');
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     print('----- Screen B Dispose is Called -----');
//   }

//   @override
//   Widget build(BuildContext context) {
//     print('----- Screen B Build is called -----');
//     return Scaffold(
//         appBar: AppBar(title: Text('ScreenB')),
//         body: Center(
//             child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text('POP!'))));
//   }
// }

// weathreApp
import 'package:flutter/material.dart';
import 'package:flutter_codingchef_beginner/screens/loading.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: Loading(),
    );
  }
}
