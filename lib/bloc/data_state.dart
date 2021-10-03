part of 'data_bloc.dart';


abstract class DataState {
  const DataState();

  List<Object> get props => [];
}

class DataInitial extends DataState {}

class DataSucessfull extends DataState {
  final DataResponse dataResponse;
  DataSucessfull({this.dataResponse});
}

class DataLoading extends DataState {}

class DataFailed extends DataState {
  final String message;
  DataFailed({this.message});
}


