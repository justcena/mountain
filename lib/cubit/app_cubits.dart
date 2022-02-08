import 'package:bloc/bloc.dart';
import 'package:sliders/services/data_services.dart';

import 'app_cubit_state.dart';

class AppCubits extends Cubit<CubitState>{
  AppCubits({required this.data}) : super(InitialState()){
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;

  void getData() async{
    try{
      emit(LoadingState());
      places=data.getInfo();
      emit(LoadedState(places));

    }catch(e){}
  }
}