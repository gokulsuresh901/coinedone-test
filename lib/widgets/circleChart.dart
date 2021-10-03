import 'package:coinedOne/data/circleChartData.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CircleChart extends StatefulWidget {
  @override
  _CircleChartState createState() => _CircleChartState();
}

class _CircleChartState extends State<CircleChart> {

  final List<Data> data= [
    Data(name: "red",percentage: 20,color: Colors.red),
    Data(name: "blue",percentage: 70,color: Colors.blueAccent),
    Data(name: "yellow",percentage: 20,color: Colors.yellowAccent)
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: 0,
            child: circularChart(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              textOne(),
              textTwo(),
            ],
          ),
        ],
      ),
    );
  }

  Widget textOne()
  {
    return Text(
      "Total",
      style: TextStyle(
          fontSize: 25.0,
          color: Colors.black87,
          fontWeight: FontWeight.bold
      ),
    );
  }

  Widget textTwo()
  {
    return Text(
      "2h 40m",
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.black87,
      ),
    );
  }

  Widget circularChart()
  {
    return SfCircularChart(
      series: <CircularSeries>[
        DoughnutSeries<Data,String>(
          dataSource: data,
          pointColorMapper: (Data data, _)=> data.color,
          xValueMapper: (Data data, _) => data.name,
          yValueMapper: (Data data, _) => data.percentage,
          innerRadius: '85%',
        )
      ],
    );
  }
}
