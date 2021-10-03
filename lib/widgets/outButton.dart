import 'package:flutter/material.dart';

class OutButton extends StatefulWidget {
  @override
  _OutButtonState createState() => _OutButtonState();
}

class _OutButtonState extends State<OutButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: OutlineButton(
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 2,
          ),
          shape: RoundedRectangleBorder(),
          onPressed: ()
          {
            print("button pressed !!!");
          },
          child: Text(
            "Extended Free-Time",
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
