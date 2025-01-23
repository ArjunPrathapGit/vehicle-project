import 'package:http/src/response.dart';

class SignInResponse {
  String? result;
  int? otp;
  String? otpVerificationurl;
  String? resendOtp;
  int? otpExpire;

  SignInResponse(
      {this.result,
      this.otp,
      this.otpVerificationurl,
      this.resendOtp,
      this.otpExpire});

  SignInResponse.fromJson(Map<String, dynamic> json,) {
    result = json['result'];
    otp = json['otp'];
    otpVerificationurl = json['otp_verificationurl'];
    resendOtp = json['resend_otp'];
    otpExpire = json['otp_expire'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['result'] = result;
    data['otp'] = otp;
    data['otp_verificationurl'] = otpVerificationurl;
    data['resend_otp'] = resendOtp;
    data['otp_expire'] = otpExpire;
    return data;
  }
}
