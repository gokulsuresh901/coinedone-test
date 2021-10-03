import 'package:flutter/material.dart';

class LinearIndicator extends StatefulWidget {
  @override
  _LinearIndicatorState createState() => _LinearIndicatorState();
}

class _LinearIndicatorState extends State<LinearIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: 300,
      height: 20,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: LinearProgressIndicator(
          value: 0.25,
          valueColor: AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
          backgroundColor: Color.fromRGBO(228, 239, 255,1),
        ),
      ),
    );
  }
}
