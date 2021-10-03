part of 'data_bloc.dart';

abstract class DataEvent {
  const DataEvent();

  List<Object> get props => [];
}

class FetchDataEvent extends DataEvent {
  FetchDataEvent();
}
