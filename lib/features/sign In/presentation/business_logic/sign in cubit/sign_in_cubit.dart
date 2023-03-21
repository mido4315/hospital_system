import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/api service/api_service.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInState.initial());


  Future<bool?> login(String email , String password) async{
    try{
      int? status = await APIService.loginPost(email: email, password: password);
      if(status == 1) return true;
      if(status == 0) return false;
    }catch (e){
      print("$e");
      return false;
    }
    return null;
  }
  void emailChanged(String value){
    emit(state.copyWith(email: value,status: SignInStatus.initial));
  }
  void passwordChanged(String value){
    emit(state.copyWith(password: value,status: SignInStatus.initial));
  }
}
