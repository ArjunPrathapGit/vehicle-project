import 'package:flutter/material.dart';
import 'package:vehicleproject/screens/onboarding_screens/model-walkthrough.dart';

class Walkthrough1 extends StatelessWidget {
  const Walkthrough1({super.key});

  @override
  Widget build(BuildContext context) {
    return WalkthroughModel(img:"assets/images/walkthrough1_img.png" ,heading:"Navigate,\nReserve & Park" 
,description: "Discover easy, stress-free parking with\njust a few taps",
);
  }
}