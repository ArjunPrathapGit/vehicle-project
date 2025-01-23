import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vehicleproject/models/logged_in_user.dart';

import 'package:vehicleproject/screens/profile%20page/profile_page_screen.dart';
import 'package:vehicleproject/screens/profile%20page/profile_screen_provider.dart';

class SignInOtpProvider with ChangeNotifier { 

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
        log(response.body);
        var data = jsonDecode(response.body.toString());

         
      

        if(data['result'] == 'success'){
          final records = data['records'];
          LoggedInUser.fromJson(records );
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString('user', jsonEncode(LoggedInUser.toJson()));
        }
        await context.read<ProfileScreenProvider>().getProfle();
        print(data);
       
        print("otp varified successfully");
        print(data['records']);
        var records = data['records'];
        print(records['token']);
        var token =records['token'];
        print(token['access_token']);
        print("hhhhhhhhhhhhhhhhhhhhhh");
        var name = records['name'];
        print(name); 
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePageScreen(
          accessToken: token['access_token'],
        ),));
        
        
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
        print("incorrect otp: ${response.statusCode}");
        print("Response: ${response.body}");
      }
    } catch (e) {
      print("Error: $e");
    }
  }


}