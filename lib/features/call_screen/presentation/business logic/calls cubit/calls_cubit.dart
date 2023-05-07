import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/calls_api_service.dart';
import '../../../data/model/call_model.dart';

part 'calls_state.dart';

class CallsCubit extends Cubit<CallsState> {
  CallsCubit() : super(CallsInitial());

  List<Call?>myCalls = [];

  Future fetchCalls() async {

    emit(CallsLoading());
    try {
      List nums = [1,2,5,7,1,2,5,7];
        for(var i in nums){
          Call? result = await CallsAPIService.showCalls(id: '$i');
          myCalls.add(result);
        }
      emit(CallsSuccess(myCalls));
    } catch (e) {
      print('errrrrrrrrrrr : ${e}');
      emit(CallsFailure());
    }
  }
}
