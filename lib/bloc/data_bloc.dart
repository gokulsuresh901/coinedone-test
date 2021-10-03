import 'dart:async';




import 'package:coinedOne/api/model/dataResponse.dart';
import 'package:coinedOne/data/apiBridge.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
part 'data_event.dart';
part 'data_state.dart';
class DataBloc extends Bloc<DataEvent, DataState> {
  ApiBridge apiBridge = GetIt.I.get<ApiBridge>();
  DataBloc() : super(DataInitial());
  Stream<DataState> mapEventToState(
      DataEvent event,
      ) async* {
    if (event is FetchDataEvent) {
      yield DataLoading();
      try {
        DataResponse dataResponse = await apiBridge.fetchData();
        yield DataSucessfull(dataResponse: dataResponse);
      } catch (e) {
        yield DataFailed(message: "Oops!");
      }
    }
  }
}
