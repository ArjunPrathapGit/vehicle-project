import 'package:flutter/material.dart';
import 'package:vehicleproject/widgets/buttons.dart';

class SuccessPrimaryVehicleAlert extends StatelessWidget {
  
  final String alertHeading;
  final String alertText;
  final VoidCallback? onTap;
  const SuccessPrimaryVehicleAlert({super.key,required this.alertHeading,required this.alertText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 444,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight:Radius.circular(25) )

              ),
                height: 365.0,
                width: 369,
               
                child: Column(
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                     Text(
                      alertHeading,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff94684E)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     Text(
                     alertText,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 70,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Buttons(
                                              color: Color(0xFF44322D),
                                              text: 'Done',
                                              onPressed: () {
                                               
                      Navigator.pop(context);
                      
                                              },
                                              textColor: Colors.white,
                                            )
                      ),
                    )

                   
                  ],
                )),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 280,
            child: Container(
              height: 138,
              width: 138,
              child: Image.asset("assets/images/Group 3.png"),
            ),
          ),
        ],
      ),
    );
  }
}
