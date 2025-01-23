class SignUpSuccessModel {
  String? result;
  int? otp;
  String? otpVerificationurl;
  String? resendOtp;
  int? otpExpire;

  SignUpSuccessModel(
      {this.result,
      this.otp,
      this.otpVerificationurl,
      this.resendOtp,
      this.otpExpire});

  SignUpSuccessModel.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    otp = json['otp'];
    otpVerificationurl = json['otp_verificationurl'];
    resendOtp = json['resend_otp'];
    otpExpire = json['otp_expire'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['otp'] = this.otp;
    data['otp_verificationurl'] = this.otpVerificationurl;
    data['resend_otp'] = this.resendOtp;
    data['otp_expire'] = this.otpExpire;
    return data;
  }
}