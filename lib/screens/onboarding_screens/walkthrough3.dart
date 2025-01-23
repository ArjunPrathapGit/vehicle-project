import 'package:flutter/material.dart';
import 'package:vehicleproject/screens/onboarding_screens/model-walkthrough.dart';

class Walkthrough3 extends StatelessWidget {
  const Walkthrough3({super.key});

  @override
  Widget build(BuildContext context) {
    return WalkthroughModel(img:"assets/images/walkthrough3_img.png" ,heading:"Your Parking,\nSimplified" 

,description: "Discover easy, stress-free parking with\njust a few taps",
);
  }
}