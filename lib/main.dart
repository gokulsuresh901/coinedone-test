import 'package:coinedOne/bloc/data_bloc.dart';
import 'package:coinedOne/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return MultiBlocProvider(
     providers: [
       BlocProvider<DataBloc>(create: (context) => DataBloc()),
     ],
     child: Home(),
     );
  }
}

