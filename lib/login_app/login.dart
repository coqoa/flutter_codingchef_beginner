import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: Padding(
        padding: EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonTheme(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/JAVADOT.png',
                    width: 50,
                  ),
                  Text(
                    'Login with Google',
                    style: TextStyle(color: Colors.black87, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      'assets/JAVADOT.png',
                      width: 50,
                    ),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
            ),
            SizedBox(
              height: 10.0,
            ),
            ButtonTheme(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/POMOTODO.png',
                    width: 50,
                  ),
                  Text(
                    'Login with Google',
                    style: TextStyle(color: Colors.black87, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      'assets/POMOTODO.png',
                      width: 50,
                    ),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
            ),
            SizedBox(
              height: 10.0,
            ),
            ButtonTheme(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/TAPTAP.png',
                    width: 50,
                  ),
                  Text(
                    'Login with Google',
                    style: TextStyle(color: Colors.black87, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      'assets/TAPTAP.png',
                      width: 50,
                    ),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
            ),
          ],
        ),
      ),
    );
  }
}
