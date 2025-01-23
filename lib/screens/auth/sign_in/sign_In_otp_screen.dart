import 'dart:async';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:vehicleproject/screens/auth/pinput_custumization.dart';
import 'package:vehicleproject/screens/auth/sign_in/signIn_otp_provider.dart';
import 'package:vehicleproject/screens/auth/sign_in/sign_In_provider.dart';

import 'package:vehicleproject/widgets/buttons.dart';

class SignInOtpScreen extends StatefulWidget {
  
  
  final String selectedCountryCode;
  final String mobile;
  SignInOtpScreen({
    
    
    required this.selectedCountryCode,
    required this.mobile,
    super.key,
  });

  @override
  State<SignInOtpScreen> createState() => _SignInOtpScreenState();
}

class _SignInOtpScreenState extends State<SignInOtpScreen> {
  TextEditingController pinController = TextEditingController();
  
  

  @override
  void initState() {
    context.read<SignInOtpProvider>().startTimer();
    super.initState();
  }

  

  @override
  Widget build(BuildContext context) {
    final signInProvider =  context.watch<SignInProvider>();
    final otp = signInProvider.otp;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor:Colors.white,
        body: Stack(
          children: [
            SafeArea(
                child: Padding(
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
                            border: Border.all(color: Color(0xffCCB5A7)),
                            color: Color(0xffDE542D).withOpacity(0.1)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "EN",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
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
                 const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Enter the 4 digit code sent to you at",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff959595)),
                  ),
                  Text(
                    widget.selectedCountryCode +
                        widget.mobile.replaceRange(0, 6, "******"),
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff44322D)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 57, left: 57),
                    child: Form(
                        child: Column(
                      children: [
                        PinputExample(
                          pinController: pinController,
                        )
                      ],
                    )),
                  ),
                  Consumer<SignInOtpProvider>(
        builder: (context, signInOtpProvider, child) {
      String otpError = signInOtpProvider.otpError; 
      
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
                 Consumer<SignInOtpProvider>(builder: (context, signInOtpProvider, child) {
                   return signInOtpProvider.reSendTime!=0? Align(
                    child: Text("Time remaining ${signInOtpProvider.reSendTime}",style: TextStyle(fontSize: 14,color:Color(0xff94684E) ),)):SizedBox();
                 },),
                  Padding(
                    padding: const EdgeInsets.only(left: 3, top: 30),
                    child: Buttons(
                      color: Color(0xFF44322D),
                      text: 'Verify',
                      onPressed: () {
                        final signInOtpProvider =
                            Provider.of<SignInOtpProvider>(context,
                                listen: false);
                        var pin = pinController.text;

                        if (pin.isEmpty || pin.length != 4) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text("Please enter a valid 4 digit OTP")),
                          );
                        } else {
                          signInOtpProvider.otpVarification(
                              pin, otp?.otpVerificationurl??'error', context);
                        }
                      },
                      textColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                Consumer<SignInOtpProvider>(builder: (context, signInOtpProvider, child) {
                  return signInOtpProvider.reSendTime==0?  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Didn’t received the OTP? ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffCCB5A7)),
                      ),
                     TextButton(
                          onPressed: () {
                            final signInOtpProvider =
                                Provider.of<SignInOtpProvider>(context,
                                    listen: false);

                            var pinn = pinController.text;

                            signInOtpProvider.ResendotpVarification(
                                pinn,otp?.resendOtp ?? 'n', context);
                                signInOtpProvider.reSendTime=60;
                                signInOtpProvider.startTimer();
                          },
                          child: const Text(
                            "Resend code",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff44322D)),
                          )
                          )
                    ],
                  ):SizedBox();
                },)
                ],
              ),
            )),
            Consumer<SignInOtpProvider>(
              builder: (context, signInOtpProvider, child) {
                return signInOtpProvider.isLoadingForVarify
                    ? Container(
                        color: Colors.black.withOpacity(0.5),
                        child: const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Color(0xff44322D),
                          ),
                        ),
                      )
                    : const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
