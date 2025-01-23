import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vehicleproject/models/logged_in_user.dart';


import 'package:vehicleproject/screens/onboarding_screens/onboarding_screen.dart';
import 'package:vehicleproject/screens/profile%20page/profile_page_screen.dart';
import 'package:vehicleproject/screens/profile%20page/profile_screen_provider.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? finalCred;
  @override
  void initState() {
    super.initState();

    getValidationData().whenComplete(() async{
      Future.delayed(const Duration(seconds: 3), () {
      // if (!mounted) return;
      // Navigator.of(context).pushReplacement(MaterialPageRoute(
      //   builder: (_) => finalCred==null? const OnboardingScreen():ProfilePageScreen(),
      // ));
    });
    },);
  }
  Future getValidationData() async{
   final SharedPreferences prefs = await SharedPreferences.getInstance();
   var obtainedCred =prefs.getString('user');
   print(obtainedCred);
   if(obtainedCred != null){
    LoggedInUser.fromJson(jsonDecode(obtainedCred));
    if(LoggedInUser.uid != null){
      print(LoggedInUser.uid);
      await context.read<ProfileScreenProvider>().getProfle();
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePageScreen(),));
    }
   }else{
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnboardingScreen(),));
   }
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE1DDD2),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 101,
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/images/splashLogo.png",
                      ),
                      const Text(
                        "AlBalad البلد",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment(0, 0.85),
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xff94684E)),
              strokeWidth: 0.7,
            ),
          )
        ],
      ),
    );
  }
}
