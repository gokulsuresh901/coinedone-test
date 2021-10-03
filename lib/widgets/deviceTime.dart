import 'package:flutter/material.dart';
class DeviceTime extends StatelessWidget {
  final String text;
  final String time;
  final IconData iconName;
  DeviceTime({@required this.time,@required this.text,@required this.iconName});
  @override
  Widget build(BuildContext context) {
      return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5),
            child:Icon(iconName,
              size: 60,
              color: Colors.grey[700],) ,),
          SizedBox(
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              Text(
                text,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
