import 'package:flutter/material.dart';
import 'package:vehicleproject/screens/onboarding_screens/walkthrough1.dart';
import 'package:vehicleproject/screens/onboarding_screens/walkthrough2.dart';
import 'package:vehicleproject/screens/onboarding_screens/walkthrough3.dart';
import 'package:vehicleproject/screens/onboarding_screens/walkthrough4.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  final List<double> values = [
    0.25,
    0.50,
    0.75,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            children: const [
              Walkthrough1(),
              Walkthrough2(),
              Walkthrough3(),
              // Walkthrough4(),
            ],
          ),
          if (currentPage < 3)
            Align(
              alignment: const Alignment(0, .9),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: CircularProgressIndicator(
                      value: values[currentPage],
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          Color(0xff94684E)),
                      strokeWidth: 3.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      currentPage < 2
                          ? _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn)
                          : Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Walkthrough4(),
                            ));
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff44322D),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(
                        'assets/images/rightarrow.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (currentPage < 2)
            Align(
              alignment: Alignment(0.82, -0.85),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Walkthrough4(),
                  ));
                },
                child: Container(
                  height: 32,
                  width: 72,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0xffCCB5A7)),
                      color: Color(0xffDE542D).withOpacity(0.1)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text("Skip"),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/images/rightarrowblack.png",
                        height: 16,
                        width: 16,
                      )
                    ],
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
