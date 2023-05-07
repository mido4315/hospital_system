part of 'calls_cubit.dart';

@immutable
abstract class CallsState {}

class CallsInitial extends CallsState {}

class CallsLoading extends CallsState {}

class CallsSuccess extends CallsState {
  CallsSuccess(this.myCalls);
  final List<Call?>? myCalls;
}

class CallsFailure extends CallsState {}
