import 'package:coinedOne/widgets/linearIndicator.dart';
import 'package:coinedOne/widgets/linkButton.dart';
import 'package:coinedOne/widgets/outButton.dart';
import 'package:flutter/material.dart';

class TimeUsageSection extends StatefulWidget {
  @override
  _TimeUsageSectionState createState() => _TimeUsageSectionState();
}

class _TimeUsageSectionState extends State<TimeUsageSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        usageTitle(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:<Widget> [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                Text(
                  "Used",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "30m",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 80,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                Text(
                  "Max",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "2h",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            )
          ],
        ),
        LinearIndicator(),
        OutButton(),
        LinkButton(name: "Change Time Restrictions",),
      ],
    );
  }
  Widget usageTitle()
  {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Text(
          "Free-Time Usage",
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.black87,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
