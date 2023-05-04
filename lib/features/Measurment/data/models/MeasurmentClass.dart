class Measurment {
  late int? status;
  late String? message;
  late Data? data;

  Measurment({ this.status,  this.message,  this.data});

  Measurment.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = (json['data'] != null ? new Data.fromJson(json['data']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  late int? id;
  late String? bloodPressure;
  late String? sugarAnalysis;
  Null tempreture;
  Null fluidBalance;
  Null respiratoryRate;
  Null heartRate;
  late String? note;
  late String? status;

  Data(
      {  this.id,
         this.bloodPressure,
         this.sugarAnalysis,
        this.tempreture,
        this.fluidBalance,
        this.respiratoryRate,
        this.heartRate,
         this.note,
         this.status});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bloodPressure = json['blood_pressure'];
    sugarAnalysis = json['sugar_analysis'];
    tempreture = json['tempreture'];
    fluidBalance = json['fluid_balance'];
    respiratoryRate = json['respiratory_rate'];
    heartRate = json['heart_rate'];
    note = json['note'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['blood_pressure'] = this.bloodPressure;
    data['sugar_analysis'] = this.sugarAnalysis;
    data['tempreture'] = this.tempreture;
    data['fluid_balance'] = this.fluidBalance;
    data['respiratory_rate'] = this.respiratoryRate;
    data['heart_rate'] = this.heartRate;
    data['note'] = this.note;
    data['status'] = this.status;
    return data;
  }
}
