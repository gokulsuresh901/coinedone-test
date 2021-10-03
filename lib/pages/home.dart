import 'package:coinedOne/bloc/data_bloc.dart';
import 'package:coinedOne/sections/dashBoardSection.dart';
import 'package:coinedOne/sections/deviceSection.dart';
import 'package:coinedOne/sections/timeUsageSection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget divider = Divider(
    thickness: 1,
    color: Colors.grey[700],
  );
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
          child: ListView(
            children: <Widget>[
              DashBoardSection(),
              divider,
              TimeUsageSection(),
              divider,
              DeviceSection(),
            ],
          ),
        ),
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
