import 'package:hospital_system/features/Measurment/data/models/MeasurmentClass.dart';
import 'package:hospital_system/features/Measurment/data/web_services/Measurment_API.dart';

class MeasurmentRepo{
  late MeasurmentAPI measurmentwebservices;

  MeasurmentRepo(this.measurmentwebservices);

  Future <List<dynamic>>getMeasurments()async{
    final measurment = await measurmentwebservices.getMeasurments();

    return measurment.map((measurment) => Data.fromJson(measurment)).toList();
  }
}