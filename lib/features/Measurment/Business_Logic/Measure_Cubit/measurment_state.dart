part of 'measurment_cubit.dart';

@immutable
abstract class MeasurmentState {}

class MeasurmentInitial extends MeasurmentState {}

class MeasurmentLoaded extends MeasurmentState{
  final List<dynamic> measurments;

  MeasurmentLoaded(this.measurments);
}
class MeasurmentFail extends MeasurmentState{

}
