import 'package:equatable/equatable.dart';

import '../model/data_model.dart';

abstract class CubitState extends Equatable {}

class InitialState extends CubitState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class WelcvomeState extends CubitState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadingState extends CubitState { //////////////////////FOR CIRCULAR INDICATOR HASTESH
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadedState extends CubitState {
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  // TODO: implement props
  List<Object> get props => [places];
}

class DetailState extends CubitState {
  DetailState(this.place);
  final  DataModel place;
  @override
  // TODO: implement props
  List<Object> get props => [place];
}


