import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:vehicleproject/screens/auth/sign_in/sign_In_otp_screen.dart';
import 'package:vehicleproject/screens/auth/sign_in/signin_response_model.dart';

class SignInProvider with ChangeNotifier {
 
  bool isLoading = false;
  SignInResponse? otp;
  

  
   //backend validation variables->
  
  String mobileError = '';  

  String? errorTextForMobileTextFormfield;

  void validateInputformobile(String value) {
  
    if (value.isEmpty) {
      errorTextForMobileTextFormfield = "Please enter the mobile number";
    }  else {
      errorTextForMobileTextFormfield = null;
    }

} 

  void signIn(
      String mobile, String selectedCountryCode,BuildContext context) async {
    try {
      
      isLoading = true;
      notifyListeners();
       

       mobileError = '';  
      notifyListeners();
   
      Response response = await post(
        Uri.parse("https://al-balad.e8demo.com/api/customer/v1/signin/"),
        body: {
         
          'mobile': selectedCountryCode+mobile,
          'encryption' : "False",
         
          
          'secret_key': '10946f038603d207e34bb339496f63e5',
          
        },
      );
      
      isLoading = false;
      notifyListeners();

      if (response.statusCode == 200) {
        
        
       
        print(response.body);
       
        var data = jsonDecode(response.body.toString());
        if(data['result'] == 'success'){
          otp=SignInResponse.fromJson(data);
          print(otp);
         


        }
        
        print(data);
        
        // {"result":"success","otp":1234,"otp_verificationurl":"https://al-balad.e8demo.com/api/customer/v1/otp-verification/fda346f5-d666-4612-98fb-d55adc26eeda/","resend_otp":"https://al-balad.e8demo.com/api/customer/v1/resend-otp/fda346f5-d666-4612-98fb-d55adc26eeda/","otp_expire":1}
        print("Sign In successfully");
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInOtpScreen(
          
         
          selectedCountryCode: selectedCountryCode,
          mobile: mobile,
        ),));
         
        


        
      } 
      
      else {
        print("Failed to create account. Status code: ${response.statusCode}")
        ;print(selectedCountryCode);
        print("Response: ${response.body}");


        var data = jsonDecode(response.body);
      if (data['errors'] != null) {
        
        
        if (data['errors']['mobile'] != null) {
          
            mobileError = data['errors']['mobile'];  
            notifyListeners();
        }
      }notifyListeners();


      }
      
    } catch (e) {
      print("Error: $e");
       
      isLoading = false;
      notifyListeners();
      mobileError = 'An unexpected error occurred. Please try again later.';
      notifyListeners();
    }
  }


}