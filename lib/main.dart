import 'package:coinedOne/api/service/user_resourse_service.dart';
import 'package:coinedOne/bloc/data_bloc.dart';
import 'package:coinedOne/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'data/apiBridge.dart';
Future<void> setupDependencies() async {
  final getIt = GetIt.instance;
  getIt.registerSingleton<UserResourceService>(UserResourceService());
  getIt.registerSingleton<ApiBridge>(ApiBridge());
}

void main() async{
  await setupDependencies();
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

