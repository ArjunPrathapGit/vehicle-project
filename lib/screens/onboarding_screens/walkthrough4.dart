import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicleproject/screens/auth/sign_in/sign_in_screen.dart';
import 'package:vehicleproject/screens/auth/sign_up/sign_up_screen.dart';
import 'package:vehicleproject/screens/auth/sign_up/signup_provider.dart';
import 'package:vehicleproject/widgets/buttons.dart';

class Walkthrough4 extends StatefulWidget {
  Walkthrough4({super.key});

  @override
  State<Walkthrough4> createState() => _Walkthrough4State();
}

class _Walkthrough4State extends State<Walkthrough4> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Container(
                height: 32,
                width: 72,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0xffCCB5A7)),
                  color: Color(0xffDE542D).withOpacity(0.1),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "EN",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 15),
                    Image.asset(
                      "assets/images/global.png",
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 331,
              width: 331,
              child: Image.asset("assets/images/walkthrough4_img.png"),
            ),
            Text(
              "Find the best parking\nspot near you",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color(0xff94684E),
              ),
            ),
            Text(
              "Seamless Parking, Anytime\nAnywhere. Let’s get you parked!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff959595),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Buttons(
                  color: Color(0xFF44322D),
                  text: 'Let’s Get Started',
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen(),));
                  },
                  textColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffCCB5A7),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInScreen(),));
                     
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff44322D),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    );
  }
}
