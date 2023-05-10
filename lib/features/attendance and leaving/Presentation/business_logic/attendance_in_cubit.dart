import 'package:flutter_bloc/flutter_bloc.dart';


import '../../data/api service/apiservice.dart';
import 'measurement_state.dart';


class AttendanceInCubit extends Cubit<MeasurementState> {
  final AttendanceService _attendanceService;

  AttendanceInCubit(this._attendanceService) : super(MeasurementInitial());

  Future<void> submitAttendance(Map<String, dynamic> data) async {
    try {
      emit(MeasurementLoading());
      final response = await _attendanceService.postAttendance(data);
      emit(MeasurementSuccess(response));
    } catch (e) {
      emit(MeasurementFailure(e.toString()));
    }
  }
}