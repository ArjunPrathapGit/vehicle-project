

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vehicleproject/screens/auth/sign_in/sign_in_screen.dart';

import 'package:vehicleproject/screens/onboarding_screens/onboarding_screen.dart';
import 'package:vehicleproject/screens/profile%20page/profile_screen_provider.dart';
import 'package:vehicleproject/screens/profile%20page/widgets/cardOne.dart';
import 'package:vehicleproject/screens/profile%20page/widgets/cardtwo.dart';
import 'package:vehicleproject/screens/profile%20page/widgets/listcard.dart';
import 'package:vehicleproject/screens/profile%20page/widgets/listcardCommon.dart';


class ProfilePageScreen extends StatelessWidget {
  
  final String? accessToken;
 

   ProfilePageScreen({super.key, this.accessToken,});
   showAlertDialog(BuildContext context) {

 
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed:  () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = TextButton(
    child: Text("Continue"),
    onPressed:  () async{
       final SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.clear();
                Navigator.pushAndRemoveUntil( context,MaterialPageRoute(builder: (context) => SignInScreen()),(Route<dynamic> route) => false);
    },
  );

  
  AlertDialog alert = AlertDialog(
    title: Text("Logout"),
    content: Text("Would you like to logout?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

 

  @override
  Widget build(BuildContext context) {
    final profileProvider =  context.watch<ProfileScreenProvider>();
    final profile = profileProvider.profile;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
               Column(
                      children: [
                        Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.2,
                  decoration: const BoxDecoration(
                    color: Color(0xffE1DDD2),
                  ),
                  child: const Padding(
                    padding:  EdgeInsets.only(bottom: 15),
                    child: Center(child: Text("My Profile",style: TextStyle(color: Color(0xff44322D),fontSize: 18,fontWeight: FontWeight.w500),)),
                  ),
                  
                ),
               const SizedBox(height: 62,),
                Text(profile?.firstName ?? 'User',style:const TextStyle(color: Color(0xff44322D),fontSize: 22,fontWeight: FontWeight.w500),),
               Text(profile?.mobile ?? '',style:const TextStyle(color: Color(0xff959595),fontSize: 14,fontWeight: FontWeight.w400),),
               const SizedBox(height: 14,),
               Container(
                height: 26,
                width: 86,
                decoration: BoxDecoration(
                  color: const Color(0xff44322D),
                  borderRadius: BorderRadius.circular(34)
                ),
                child: const Center(child: Text("Edit Profile",style: TextStyle(color: Color(0xffE1DDD2),fontSize: 12,fontWeight: FontWeight.w500),)),
               ),
                      ],
                    ),
                
              const SizedBox(height: 31,),
               const Padding(
                 padding:  EdgeInsets.only(left: 16),
                 child: Row(
                   children: [
                     CardOne(),
                     SizedBox(width: 10,),
                     CardTwo()
                   ],
                 ),
               ),
               const SizedBox(height: 31,),
              const ListCard(),
              const SizedBox(height: 10,),
              const ListCardCommon(img: "assets/images/globals.png",text: "Language",),
              const ListCardCommon(img: "assets/images/document-text.png",text: "Terms & Conditions",),
              const ListCardCommon(img: "assets/images/document-text.png",text: "Privacy Policies",),
              const ListCardCommon(img: "assets/images/notification-bing.png",text: "Notification Settings",),
              const ListCardCommon(img: "assets/images/document-text.png",text: "Privacy Policies",),
              const ListCardCommon(img: "assets/images/call-calling.png",text: "Contact Us",),
               ListCardCommon(img: "assets/images/logout.png",text: "Log Out",
              ontap:() {
                // final SharedPreferences prefs = await SharedPreferences.getInstance();
                // prefs.remove('user');
                // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => OnboardingScreen()));
                showAlertDialog(context);
                
              } ,),
            
           
            
            
               
            
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.126,),
              child: Align(alignment: Alignment(0,0),
                child: SizedBox(
                  height: 110,
                  width: 110,
                  child: Stack(
                    children: [
                      Image.asset("assets/images/sheikimage.png"),
                        Align(alignment: Alignment(0.9, 0.8),
                child: SizedBox(
                  height: 26,
                  width: 26,
                  child: Image.asset("assets/images/cameraIcon.png"),
                ),
              ),
              
                    ],
                  ),
                ),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
  
}
