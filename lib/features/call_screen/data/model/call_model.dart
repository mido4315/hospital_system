class Call {
  int? status;
  String? message;
  Data? data;

  Call({this.status, this.message, this.data});

  Call.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? patientName;
  String? createdAt;
  String? doctorId;
  int? docId;
  String? nurseId;
  String? analysisId;
  String? status;
  String? caseStatus;
  String? age;
  String? phone;
  String? description;
  String? bloodPressure;
  String? sugarAnalysis;
  Null? tempreture;
  Null? fluidBalance;
  Null? respiratoryRate;
  Null? heartRate;
  String? measurementNote;
  String? image;
  String? medicalRecordNote;

  Data(
      {this.id,
        this.patientName,
        this.createdAt,
        this.doctorId,
        this.docId,
        this.nurseId,
        this.analysisId,
        this.status,
        this.caseStatus,
        this.age,
        this.phone,
        this.description,
        this.bloodPressure,
        this.sugarAnalysis,
        this.tempreture,
        this.fluidBalance,
        this.respiratoryRate,
        this.heartRate,
        this.measurementNote,
        this.image,
        this.medicalRecordNote});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    patientName = json['patient_name'];
    createdAt = json['created_at'];
    doctorId = json['doctor_id'];
    docId = json['doc_id'];
    nurseId = json['nurse_id'];
    analysisId = json['analysis_id'];
    status = json['status'];
    caseStatus = json['case_status'];
    age = json['age'];
    phone = json['phone'];
    description = json['description'];
    bloodPressure = json['blood_pressure'];
    sugarAnalysis = json['sugar_analysis'];
    tempreture = json['tempreture'];
    fluidBalance = json['fluid_balance'];
    respiratoryRate = json['respiratory_rate'];
    heartRate = json['heart_rate'];
    measurementNote = json['measurement_note'];
    image = json['image'];
    medicalRecordNote = json['medical_record_note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['patient_name'] = this.patientName;
    data['created_at'] = this.createdAt;
    data['doctor_id'] = this.doctorId;
    data['doc_id'] = this.docId;
    data['nurse_id'] = this.nurseId;
    data['analysis_id'] = this.analysisId;
    data['status'] = this.status;
    data['case_status'] = this.caseStatus;
    data['age'] = this.age;
    data['phone'] = this.phone;
    data['description'] = this.description;
    data['blood_pressure'] = this.bloodPressure;
    data['sugar_analysis'] = this.sugarAnalysis;
    data['tempreture'] = this.tempreture;
    data['fluid_balance'] = this.fluidBalance;
    data['respiratory_rate'] = this.respiratoryRate;
    data['heart_rate'] = this.heartRate;
    data['measurement_note'] = this.measurementNote;
    data['image'] = this.image;
    data['medical_record_note'] = this.medicalRecordNote;
    return data;
  }
}
