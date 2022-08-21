import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[500],
      appBar: AppBar(
        title: Text('Dice Game'),
        backgroundColor: Colors.green[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                children: [
                  // Image(
                  // image: AssetImage('assets/GIT.png'),
                  // width: 300.0,
                  // )
                  Expanded(
                    // flex: 1,
                    child: Image.asset('assets/DICE$leftDice.png'),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Expanded(
                    // flex: 2,
                    child: Image.asset('assets/DICE$rightDice.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            ButtonTheme(
              minWidth: 100.0,
              height: 60.0,
              child: RaisedButton(
                child: Icon(
                  Icons.play_arrow,
                  size: 50.0,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    leftDice = Random().nextInt(6) + 1;
                    rightDice = Random().nextInt(6) + 1;
                    showToast('Dice$leftDice, DICE$rightDice');
                  });
                },
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.white,
      textColor: Colors.black,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}
