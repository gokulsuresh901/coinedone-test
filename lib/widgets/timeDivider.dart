import 'package:flutter/material.dart';

class TimeDivider extends StatelessWidget {
  final String name;
  final String time;
  final Color colorName;
  TimeDivider({@required this.name,
    @required this.time,@required this.colorName});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 2),
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              color: colorName,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
