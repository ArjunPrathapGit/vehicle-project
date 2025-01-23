import 'package:flutter/material.dart';
import 'package:vehicleproject/screens/onboarding_screens/model-walkthrough.dart';

class Walkthrough2 extends StatelessWidget {
  const Walkthrough2({super.key});

  @override
  Widget build(BuildContext context) {
    return WalkthroughModel(img:"assets/images/walkthrough2_img.png" ,heading:"Park Smart,\nSave your Time" 

,description: "Discover easy, stress-free parking with\njust a few taps",
);
  }
}