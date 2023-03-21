class UserModel {
  int? status;
  String? message;
  Data? data;

  UserModel({this.status, this.message, this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
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
  String? firstName;
  String? lastName;
  String? mobile;
  String? email;
  String? gender;
  String? status;
  String? specialist;
  String? type;
  String? birthday;
  String? address;
  String? createdAt;
  bool? verified;
  String? tokenType;
  String? accessToken;

  Data(
      {this.id,
        this.firstName,
        this.lastName,
        this.mobile,
        this.email,
        this.gender,
        this.status,
        this.specialist,
        this.type,
        this.birthday,
        this.address,
        this.createdAt,
        this.verified,
        this.tokenType,
        this.accessToken});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    mobile = json['mobile'];
    email = json['email'];
    gender = json['gender'];
    status = json['status'];
    specialist = json['specialist'];
    type = json['type'];
    birthday = json['birthday'];
    address = json['address'];
    createdAt = json['created_at'];
    verified = json['verified'];
    tokenType = json['token_type'];
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['status'] = this.status;
    data['specialist'] = this.specialist;
    data['type'] = this.type;
    data['birthday'] = this.birthday;
    data['address'] = this.address;
    data['created_at'] = this.createdAt;
    data['verified'] = this.verified;
    data['token_type'] = this.tokenType;
    data['access_token'] = this.accessToken;
    return data;
  }
}
