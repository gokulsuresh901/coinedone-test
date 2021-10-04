import 'package:coinedOne/bloc/data_bloc.dart';
import 'package:coinedOne/data/circleChartData.dart';
import 'package:coinedOne/sections/dashBoardSection.dart';
import 'package:coinedOne/sections/deviceSection.dart';
import 'package:coinedOne/sections/timeUsageSection.dart';
import 'package:coinedOne/widgets/deviceTime.dart';
import 'package:coinedOne/widgets/linearIndicator.dart';
import 'package:coinedOne/widgets/linkButton.dart';
import 'package:coinedOne/widgets/outButton.dart';
import 'package:coinedOne/widgets/timeDivider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget divider = Divider(
    thickness: 1,
    color: Colors.grey[700],
  );

  String getTimeString(int value) {
    final int hour = value ~/ 60;
    final int minutes = value % 60;
    if(hour==0)
    return '${minutes.toString().padLeft(2, "0")}m';
    if(minutes==0)
      return '${hour.toString()}h';
    else
      return '${hour.toString()}h ${minutes.toString().padLeft(2, "0")}m';
  }
  @override
  Widget build(BuildContext context) {
   BlocProvider.of<DataBloc>(context).add(FetchDataEvent());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CoinedOne Challenge",
      home: Scaffold(
        appBar: coinedOneAppBar(),
        body: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: BlocBuilder<DataBloc, DataState>(
            builder: (context, state) {
              if (state is DataLoading) {
                return CircularProgressIndicator();
              }
              if(state is DataSucessfull)
                {return ListView(
                  children: <Widget>[
                    dashboardSection(state),
                    divider,
                    timeUsageSection(state),
                    divider,
                    deviceSection(state),
                  ],
                );}
              return Text("error");

            },
          ),
        ),
      ),
    );
  }

  Column deviceSection(DataSucessfull state) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Text(
              "By Devices",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ),

        ),
        DeviceTime(
            time: this.getTimeString(int.parse(state.dataResponse.mobileTotalTime)),
            text: "Adi's Phone",
            iconName: Icons.phone_iphone_rounded),
        DeviceTime(
            time: this.getTimeString(int.parse(state.dataResponse.laptopTotalTime)), text: "Adi's Laptop", iconName: Icons.laptop_mac),
        LinkButton(
          name: "See All Devices",
        ),
      ],
    );
  }

  Column timeUsageSection(DataSucessfull state) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Text(
              "Free-Time Usage",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Used",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  this.getTimeString(int.parse(state.dataResponse.chartData.freeTime.total)),
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              width: 80,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Max",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                   this.getTimeString(int.parse(state.dataResponse.freeTimeMaxUsage)),
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
        LinearIndicator(),
        OutButton(),
        LinkButton(
          name: "Change Time Restrictions",
        ),
      ],
    );
  }

  Column dashboardSection(DataSucessfull state) {
    return Column(
      children: <Widget>[
        Container(
          height: 100,
          child: Center(
            child: Text(
              "DashBoard",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          width: 300,
          height: 300,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                top: 0,
                child: SfCircularChart(
                  series: <CircularSeries>[
                    DoughnutSeries<Data, String>(
                      dataSource: [
                        Data(name: "blue", time: double.parse(state.dataResponse.chartData.classTime.total), color: Colors.blueAccent),
                        Data(name: "red", time: double.parse(state.dataResponse.chartData.studyTime.total), color: Colors.red),
                        Data(name: "yellow", time: double.parse(state.dataResponse.chartData.freeTime.total), color: Colors.yellowAccent)
                      ],
                      pointColorMapper: (Data data, _) => data.color,
                      xValueMapper: (Data data, _) => data.name,
                      yValueMapper: (Data data, _) => data.time,
                      innerRadius: '85%',
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    this.getTimeString(int.parse(state.dataResponse.chartData.totalTime.total)),
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black87,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        timeSection(state)
      ],
    );
  }

  Padding timeSection(state) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TimeDivider(
            name: "Class",
            time: this.getTimeString(int.parse(state.dataResponse.chartData.classTime.total)),
            colorName: Colors.blue,
          ),
          TimeDivider(
              name: "Study",
              time: this.getTimeString(int.parse(state.dataResponse.chartData.studyTime.total)),
              colorName: Colors.red),
          TimeDivider(
            name: "Free-time",
            time: this.getTimeString(int.parse(state.dataResponse.chartData.freeTime.total)),
            colorName: Colors.yellowAccent,
          )
        ],
      ),
    );
  }

  //appbar
  Widget coinedOneAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(250, 221, 244, 1),
          shape: BoxShape.circle,
        ),
      ),
      title: Text(
        "Michael",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.black87,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings_outlined,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
