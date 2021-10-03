import 'package:coinedOne/sections/timeSection.dart';
import 'package:coinedOne/widgets/circleChart.dart';
import 'package:flutter/material.dart';

class DashBoardSection extends StatefulWidget {
  @override
  _DashBoardSectionState createState() => _DashBoardSectionState();
}

class _DashBoardSectionState extends State<DashBoardSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        dashBoard(),
        CircleChart(),
        TimeSection(),
      ],
    );
  }

  Widget dashBoard()
  {
    return Container(
      height: 100,
      child: Center(
        child: Text(
          "DashBoard",
          style: TextStyle(
            color: Colors.black87,
            fontSize:30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
