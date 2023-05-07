import 'package:flutter_bloc/flutter_bloc.dart';


import '../../data/api service/apiservice.dart';


class AttendanceCubit extends Cubit<AttendanceState> {
  final AttendanceService apiService;

  AttendanceCubit(this.apiService) : super(AttendanceInitial());

  Future<void> submitAttendance(Map<String, dynamic> data) async {
    try {
      emit(AttendanceLoading());

      final response = await apiService.postAttendance(data);

      if (response.status == 1) {
        emit(AttendanceSuccess(response.message));
      } else {
        emit(AttendanceFailure(response.message));
      }
    } catch (e) {
      emit(AttendanceFailure('Failed to connect to the API.'));
    }
  }
}
abstract class AttendanceState {}

class AttendanceInitial extends AttendanceState {}

class AttendanceLoading extends AttendanceState {}

class AttendanceSuccess extends AttendanceState {
  final String message;

  AttendanceSuccess(this.message);
}

class AttendanceFailure extends AttendanceState {
  final String errorMessage;

  AttendanceFailure(this.errorMessage);
}