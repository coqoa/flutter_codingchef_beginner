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

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var titleList = [
    'COQOA',
    'GIT',
    'HEART',
    'IAMPORT',
    'JAVADOT',
    'POMOTODO',
    'STAR',
    'TAPTAP',
  ];
  var imageList = [
    'assets/COQOA.jpeg',
    'assets/GIT.png',
    'assets/Heart.png',
    'assets/IAMPORT.png',
    'assets/JAVADOT.png',
    'assets/POMOTODO.png',
    'assets/Star.png',
    'assets/TAPTAP.png',
  ];
  var description = [
    '1. description description description description description description description',
    '2. description description description description description description description',
    '3. description description description description description description description',
    '4. description description description description description description description',
    '5. description description description description description description description',
    '6. description description description description description description description',
    '7. description description description description description description description',
    '8. description description description description description description description',
  ];
  void showPopup(context, title, image, description) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(image, width: 200, height: 200),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      description,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close),
                    label: const Text('close'),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView', style: TextStyle(color: Colors.grey)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: titleList.length,
          itemBuilder: (context, index) {
            // onTap을 위한 GestureDetector
            return GestureDetector(
              onTap: () {
                showPopup(context, titleList[index], imageList[index],
                    description[index]);
              },
              child: Card(
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(imageList[index]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            titleList[index],
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: width,
                            child: Text(
                              description[index],
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[500]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
