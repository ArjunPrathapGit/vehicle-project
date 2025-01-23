import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart';
import 'package:vehicleproject/screens/auth/otp_screen.dart';
import 'package:vehicleproject/screens/auth/sign_in/signin_response_model.dart';

class SignupProvider with ChangeNotifier {
  SignInResponse? signUpotp;

  
  bool _isChecked = false; 
  bool get isChecked => _isChecked;

  bool _isValid = true; 
  bool get isValid => _isValid;

  
  void setCheckboxValue(bool newValue) {
    _isChecked = newValue;
    _isValid = _isChecked; 
    notifyListeners();
  }
  void resetsetCheckboxValue(bool newValue) {
    _isChecked = newValue;
    
    notifyListeners();
  }

 
  void validateCheckbox() {
    _isValid = _isChecked; 
    notifyListeners();
    
  }
   bool isLoading = false;


  ///front end validation--->
  String? errorTextForFullNameTextFormfield;

  void validateInputforfullname(String value) {
 
    if (value.isEmpty) {
      errorTextForFullNameTextFormfield = "Please enter Full Name";
    } else if (value.length < 3) {
      errorTextForFullNameTextFormfield = "Minimum 3 characters required.";
    } else {
      errorTextForFullNameTextFormfield = null;
    }
  
}

String? errorTextForMobileTextFormfield;

  void validateInputformobile(String value) {
  
    if (value.isEmpty) {
      errorTextForMobileTextFormfield = "Please enter the mobile number";
    }  else {
      errorTextForMobileTextFormfield = null;
    }

}

 String? errorTextForEmailTextFormfield;

  void validateInputforEmail(String value) {
  
    if (value.isEmpty) {
      errorTextForEmailTextFormfield = "Please enter Email";
    } else {
      errorTextForEmailTextFormfield = null; 
    }
  
}

  
  
  //backend validation variables->
  String emailError = '';  
  String mobileError = '';   

  

 
  void setEmailError(String error) {
    emailError = error;
    notifyListeners();
  }

  void setMobileError(String error) {
    mobileError = error;
    notifyListeners();
  }

  void resetFullNameError() {
   
    errorTextForFullNameTextFormfield='';
    notifyListeners();
  }
  void resetMobileError() {
    mobileError = '';
    errorTextForMobileTextFormfield='';
    notifyListeners();
  }

  void resetEmailError() {
    emailError = '';
    errorTextForEmailTextFormfield='';
    notifyListeners();
  }

  void resetCheckBoxError() {
  _isChecked = false; 
  _isValid = true; 
  notifyListeners();
}



  

  void signUp(
      String firstName, String mobile, String email, bool agreeTerms, String selectedCountryCode,BuildContext context) async {
    try {
      
      isLoading = true;
      notifyListeners();
       emailError = '';
       notifyListeners();

       mobileError = '';  
      notifyListeners();
   
      Response response = await post(
        Uri.parse("https://al-balad.e8demo.com/api/customer/v1/signup/"),
        body: {
          'first_name': firstName,
          'mobile': selectedCountryCode+mobile,
          'email': email,
          'encryption': 'False',
          'secret_key': '10946f038603d207e34bb339496f63e5',
          'agree_terms': agreeTerms.toString(),
        },
      );
      
      isLoading = false;
      notifyListeners();

      if (response.statusCode == 200) {
       
        
       
        print(response.body);
       
        var data = jsonDecode(response.body.toString());
        if(data['result'] == 'success'){
          signUpotp=SignInResponse.fromJson(data);
          print(signUpotp);
         


        }
        
        
        
        print(data);
        
        // {"result":"success","otp":1234,"otp_verificationurl":"https://al-balad.e8demo.com/api/customer/v1/otp-verification/fda346f5-d666-4612-98fb-d55adc26eeda/","resend_otp":"https://al-balad.e8demo.com/api/customer/v1/resend-otp/fda346f5-d666-4612-98fb-d55adc26eeda/","otp_expire":1}
        print("Account created successfully");
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtpScreen(
         
          selectedCountryCode: selectedCountryCode,
          mobile: mobile,
        ),));
         
        


        
      } 
      
      else {
        print("Failed to create account. Status code: ${response.statusCode}");print(selectedCountryCode);
        print("Response: ${response.body}");


        var data = jsonDecode(response.body);
      if (data['errors'] != null) {
        
        if (data['errors']['email'] != null) {
          
            emailError = data['errors']['email'];
            notifyListeners();
        }notifyListeners();
        
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
      emailError = 'An unexpected error occurred. Please try again later.';
      notifyListeners();
    }
  }


}