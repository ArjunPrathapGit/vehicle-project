

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:vehicleproject/screens/auth/pinput_custumization.dart';
import 'package:vehicleproject/screens/auth/sign_in/sign_In_provider.dart';

import 'package:vehicleproject/screens/auth/sign_up/sign_up_otp_provider.dart';
import 'package:vehicleproject/screens/auth/sign_up/signup_provider.dart';



import 'package:vehicleproject/widgets/buttons.dart';

class OtpScreen extends StatefulWidget {
  
  final String selectedCountryCode;
  final String mobile;
  
   OtpScreen({required this.selectedCountryCode,required this.mobile,super.key, });

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  TextEditingController pinController =TextEditingController();
 

  @override
  void initState() {
    context.read<SignUpOtpProvider>().startTimer();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final signInProvider =  context.watch<SignupProvider>();
    final signUpotp = signInProvider.signUpotp;
    
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if(!currentFocus.hasPrimaryFocus){
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SafeArea(child: Padding(
              padding: const EdgeInsets.only(top: 24.31, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 24,
                            width: 24,
                            child: Image.asset("assets/images/arrow-left.png"),
                          ),
                        ),
                        Container(
                          height: 32,
                          width: 72,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color:const Color(0xffCCB5A7)),
                              color: const Color(0xffDE542D).withOpacity(0.1)),
                          child: Row(
                            children: [
                            const  SizedBox(
                                width: 10,
                              ),
                             const Text(
                                "EN",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            const  SizedBox(
                                width: 15,
                              ),
                              Image.asset(
                                "assets/images/global.png",
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                   const SizedBox(
                    height: 62,
                  ),
                 const Text(
                    "Verify code",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff94684E)),
                  ),
                   SizedBox(height: 10,),
                  Text(
                    "Enter the 4 digit code sent to you at",
                    
            
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff959595)),
                  ),
                 
                  Text(widget.selectedCountryCode+widget.mobile.replaceRange(0, 6,"******" ),
                  
                              
                  style: TextStyle(
                              
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff44322D)),),
            
                        Padding(
                          padding: const EdgeInsets.only(top: 57,left: 57),
                          child: Form(child: Column(
                            children: [
                              PinputExample(pinController: pinController,)
                            ],
                          )),
                        ),

                         Consumer<SignUpOtpProvider>(
        builder: (context, signUpOtpProvider, child) {
      String otpError = signUpOtpProvider.otpError; 
      
      return otpError.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.only(top: 3, left: 85),
              child: Row(
                children: [
                  Text(
                    otpError,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ],
              ),
            )
          : SizedBox.shrink(); 
        },
      ),
                        SizedBox(height: 10,),
                 Consumer<SignUpOtpProvider>(builder: (context, signUpOtpProvider, child) {
                   return signUpOtpProvider.reSendTime!=0? Align(
                    child: Text("Time remaining ${signUpOtpProvider.reSendTime}",style: TextStyle(fontSize: 14,color:Color(0xff94684E) ),)):SizedBox();
                 },),
                        Padding(
                  padding: const EdgeInsets.only(left: 3, top: 30),
                  child: Buttons(
                    color: Color(0xFF44322D),
                    text: 'Sign Up',
                    onPressed: () { 
                     final signUpOtpProvider = Provider.of<SignUpOtpProvider>(context, listen: false);
                      var pin = pinController.text;
                      
            
            
                      if (pin.isEmpty || pin.length != 4) {
                            
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Please enter a valid 4 digit OTP")),
                            );
                          } else {
                            
                            signUpOtpProvider.otpVarification(pin,signUpotp?.otpVerificationurl ??'', context);
                          }
                      
                      
                      },
                    textColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                  ),
                Consumer<SignUpOtpProvider>(builder: (context, signUpOtpProvider, child) {
                  return signUpOtpProvider.reSendTime==0?  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn’t received the OTP? ",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,
                      color: Color(0xffCCB5A7)),
                    ),
                    
                    TextButton(onPressed: () {
                      final signUpOtpProvider = Provider.of<SignUpOtpProvider>(context, listen: false);
                     var pinn =pinController.text;
            
            
                      signUpOtpProvider.ResendotpVarification( pinn,signUpotp?.resendOtp??'', context);
            
                      signUpOtpProvider.reSendTime=60;
                      signUpOtpProvider.startTimer();
                     
                    }, child: Text("Resend code", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,
                      color: Color(0xff44322D)),))
                
                  ],
                ):SizedBox();
                        
                },)
                  
                ],
              ),
            )),
            Consumer<SignUpOtpProvider>(
        builder: (context, signUpOtpProvider, child) {
      return signUpOtpProvider.isLoadingForVarify
          ? Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Color(0xff44322D),
                ),
              ),
            )
          : SizedBox.shrink(); 
        },
      ),
          ],
        ),
      ),
    );
  }
}