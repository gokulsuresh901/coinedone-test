import 'package:flutter/material.dart';


class Data{
  final String name;
  final double time;
  final Color color;
  Data({this.name,this.time,this.color});
}

class PieChart{
  static List<Data> data= [
    Data(name: "red",time: 20,color: Colors.red),
    Data(name: "blue",time: 70,color: Colors.blueAccent),
    Data(name: "yellow",time: 20,color: Colors.yellowAccent)
  ];
}