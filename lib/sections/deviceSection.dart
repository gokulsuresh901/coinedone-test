import 'package:coinedOne/widgets/deviceTime.dart';
import 'package:coinedOne/widgets/linkButton.dart';
import 'package:flutter/material.dart';
class DeviceSection extends StatefulWidget {
  @override
  _DeviceSectionState createState() => _DeviceSectionState();
}

class _DeviceSectionState extends State<DeviceSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Text(
              "By Devices",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        DeviceTime(time: "40m", text: "Adi's Phone", iconName:Icons.phone_iphone_rounded),
        DeviceTime(time: "1h 30m", text: "Adi's Laptop", iconName:Icons.laptop_mac),
        LinkButton(name: "See All Devices",),
      ],
    );
  }

}
