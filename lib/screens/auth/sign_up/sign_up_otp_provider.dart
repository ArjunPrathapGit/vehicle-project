import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:vehicleproject/screens/auth/sign_in/sign_in_screen.dart';
import 'package:vehicleproject/screens/home_Screen.dart';

class SignUpOtpProvider with ChangeNotifier { 
     
   String otpError = '';  
   bool isLoadingForVarify = false;
   int reSendTime=60;
  late Timer countdownTimer;

  startTimer(){
    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer){
      
        reSendTime=reSendTime-1;
        notifyListeners();
      if(reSendTime<1){
        countdownTimer.cancel();
      }

    });

  }
  stopTimer(){
    if(countdownTimer.isActive){
      countdownTimer.cancel();
    }
  }

   void otpVarification( 
        otp,String otpVerificationurl,BuildContext context) async {
    try {
     
        isLoadingForVarify = true;
        notifyListeners();
        otpError = '';  
      notifyListeners();
      
      Response response = await post(
        Uri.parse(otpVerificationurl),
        body: {
          'otp': otp,
          'token': " test token",
          'platform': "test platform",
       
        },
      );
     
        isLoadingForVarify = false;
        notifyListeners();

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
        print("otp varified successfully");
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInScreen(),));
        
        
      } else {
        print("incorrect otp: ${response.statusCode}");
        print("Response: ${response.body}");
      }
    } catch (e) {
      
        isLoadingForVarify = false;
        notifyListeners();
      
      print("Error: $e");
    }
  }

  void ResendotpVarification( 
        resendOtp,resendOtpUrl,BuildContext context) async {
    try {
      Response response = await post(
        Uri.parse(resendOtpUrl),
        body: {
          'otp': resendOtp.toString(),

          'result': " success",
          'message': "Your OTP has been successfully resent",
          "otp_expire": 1.toString()
       
        },
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
        
      
        
        
      } else {
        var data = jsonDecode(response.body.toString());
        if (data['result'] == 'failure') {
        
        
            otpError = data['message'];  
            
            notifyListeners();
        
      }notifyListeners();
        print("incorrect otp: ${response.statusCode}");
        print("Response: ${response.body}");
      }
    } catch (e) {
      print("Error: $e");
    }
  }


}