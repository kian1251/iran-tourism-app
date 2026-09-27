import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:project/cubit/cubit_states.dart';
//import 'package:project/model/data_model.dart';
//import 'package:project/services/data_services.dart';

import '../model/data_model.dart';
import '../services/data_services.dart';
import 'cubit_states.dart';

class AppCubits extends Cubit<CubitState> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcvomeState());
  }
  final DataServices  data;
  late final places ;
  void getdata() async{
    try {
      emit(LoadingState());////////////////////LOADING DATA TO DIRST PAGE
      places = await data.getInfo();
      emit(LoadedState(places));//////////////////////LOADED DATA

    } catch (e) {}
  }
  detailPage(DataModel data){
    emit(DetailState(data));
  }
  backToHomePage(){
    emit(LoadedState(places));
  }
}
