import 'package:equatable/equatable.dart';

import '../../data/model/user_attendance.dart';
abstract class MeasurementState extends Equatable {
  const MeasurementState();

  @override
  List<Object?> get props => [];
}

class MeasurementInitial extends MeasurementState {}

class MeasurementLoading extends MeasurementState {}

class MeasurementSuccess extends MeasurementState {
  final Response response;

  MeasurementSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

class MeasurementFailure extends MeasurementState {
  final String error;

  MeasurementFailure(this.error);

  @override
  List<Object?> get props => [error];
}