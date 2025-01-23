class ProfileModel {
  String? uid;
  String? userId;
  String? firstName;
  String? lastName;
  String? email;
  String? mobile;
  MobileDetails? mobileDetails;
  int? myVehiclesCount;
  String? myWalletBalance;
  String? profilePic;

  ProfileModel(
      {this.uid,
      this.userId,
      this.firstName,
      this.lastName,
      this.email,
      this.mobile,
      this.mobileDetails,
      this.myVehiclesCount,
      this.myWalletBalance,
      this.profilePic,});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    userId = json['user_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    mobile = json['mobile'];
    mobileDetails = json['mobile_details'] != null
        ? MobileDetails.fromJson(json['mobile_details'])
        : null;
    myVehiclesCount = json['my_vehicles_count'];
    myWalletBalance = json['my_wallet_balance'];
    profilePic = json['profile_pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['uid'] = uid;
    data['user_id'] = userId;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['email'] = email;
    data['mobile'] = mobile;
    if (mobileDetails != null) {
      data['mobile_details'] = mobileDetails!.toJson();
    }
    data['my_vehicles_count'] = myVehiclesCount;
    data['my_wallet_balance'] = myWalletBalance;
    data['profile_pic'] = profilePic;
    return data;
  }
}

class MobileDetails {
  String? countryCode;
  int? mobileNumber;

  MobileDetails({this.countryCode, this.mobileNumber});

  MobileDetails.fromJson(Map<String, dynamic> json) {
    countryCode = json['country_code'];
    mobileNumber = json['mobile_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['country_code'] = countryCode;
    data['mobile_number'] = mobileNumber;
    return data;
  }
}
