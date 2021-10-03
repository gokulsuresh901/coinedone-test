import 'package:flutter/material.dart';


class Data{
  final String name;
  final double percentage;
  final Color color;
  Data({this.name,this.percentage,this.color});
}

class PieChart{
  static List<Data> data= [
    Data(name: "red",percentage: 20,color: Colors.red),
    Data(name: "blue",percentage: 70,color: Colors.blueAccent),
    Data(name: "yellow",percentage: 20,color: Colors.yellowAccent)
  ];
}