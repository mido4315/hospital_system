import 'package:bloc/bloc.dart';
import 'package:hospital_system/features/Measurment/data/models/MeasurmentClass.dart';
import 'package:hospital_system/features/Measurment/data/repositry/Measurment_repo.dart';
import 'package:meta/meta.dart';

part 'measurment_state.dart';

class MeasurmentCubit extends Cubit<MeasurmentState> {

  final MeasurmentRepo measurmentRepo;
  List<dynamic>?measurments;
  MeasurmentCubit(this.measurmentRepo) : super(MeasurmentInitial());

  List<dynamic>?getallMeasurments(){
    measurmentRepo.getMeasurments().then((measures){
      emit(MeasurmentLoaded(measures));
      this.measurments =measures;

    });
    return measurments;
  }
}
