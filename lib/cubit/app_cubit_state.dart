import 'package:equatable/equatable.dart';
import 'package:sliders/model/data_model.dart';

abstract class CubitState extends Equatable {

}

class InitialState extends CubitState{
  @override
  List<Object> get props => [];

}


class WelcomeState extends CubitState{
  @override
  List<Object> get props => [];

}
class LoadingState extends CubitState{
  @override
  List<Object> get props => [];

}
class LoadedState extends CubitState{
  LoadedState(this.places);
  final List<DataModel> places;

  @override
  List<Object> get props => [places];

}
