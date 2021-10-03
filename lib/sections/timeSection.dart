import 'package:coinedOne/widgets/timeDivider.dart';
import 'package:flutter/material.dart';

class TimeSection extends StatefulWidget {
  @override
  _TimeSectionState createState() => _TimeSectionState();
}

class _TimeSectionState extends State<TimeSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget> [
          TimeDivider(name: "Class", time: "1h 20m",colorName: Colors.blue,),
          TimeDivider(name: "Study", time: "20m",colorName: Colors.red),
          TimeDivider(name: "Free-time", time: "30m",colorName: Colors.yellowAccent,)
        ],

      ),
    );
  }
}
