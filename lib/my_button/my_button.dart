import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  MyButton({this.image, this.text, this. color, this.radius, this.onPressed});

  final Widget image;
  final Text text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          image,
          text,
          color : color,
          onPressed : onPressed
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
          borderRadius: BorderRadius.all(Radius.circular(radius))),
    );
  }
}
