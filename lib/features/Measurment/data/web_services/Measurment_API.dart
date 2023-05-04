import 'package:dio/dio.dart';
import 'package:hospital_system/features/Measurment/constants/constants.dart';

class MeasurmentAPI{
  late Dio dio;

  MeasurmentAPI(){
    BaseOptions options =BaseOptions(
      baseUrl: baseurl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 200) ,
      receiveTimeout: Duration(seconds: 200) ,

    );
    dio = Dio(options);
  }

  Future <List<dynamic>>getMeasurments()async{
    try{
      Response response = await dio.get('measurement/1');
      print(response.data.toString());
      return response.data;
    }catch(e){
      print(e.toString());
      return [];
    }
  }
}