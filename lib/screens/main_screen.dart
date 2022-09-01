import 'package:flutter/material.dart';
import 'package:flutter_codingchef_beginner/config/pallette.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  bool isSignupScreen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('image/red.jpg'), fit: BoxFit.fill)),
              child: Container(
                padding: EdgeInsets.only(top: 90, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    RichText(
                        text: TextSpan(
                            text: 'Welcome',
                            style: TextStyle(
                                letterSpacing: 1.0,
                                fontSize: 25,
                                color: Colors.white),
                            children: [
                          TextSpan(
                            text: ' to Yommy Chat!',
                            style: TextStyle(
                                letterSpacing: 1.0,
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ])),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'signup to continue',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 180,
            child: Container(
              height: 280,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5)
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: !isSignupScreen ? Palette.activeColor : Palette.textColor1),
                            ),
                            if(!isSignupScreen)
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              width: 55,
                              height: 2,
                              color: Colors.orange,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isSignupScreen = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'SIGNUP',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen ? Palette.activeColor : Palette.textColor1),
                            ),
                            if(isSignupScreen)
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              width: 55,
                              height: 2,
                              color: Colors.orange,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
