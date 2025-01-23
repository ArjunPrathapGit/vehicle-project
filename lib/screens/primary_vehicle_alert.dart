import 'package:flutter/material.dart';

class PrimaryVehicleAlert extends StatelessWidget {
  final String img;
  final String alertHeading;
  final String alertText;
  final VoidCallback? onTap;
  const PrimaryVehicleAlert({super.key,required  this.img,required this.alertHeading,required this.alertText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 444,
      width: MediaQuery.of(context).size.width*0.97,
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
                      padding: const EdgeInsets.only(),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFFF1EFE9),
                            ),
                            child: const Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    color: Color(0xff44322D),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: onTap,
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff44322D),
                            ),
                            child: const Center(
                                child: Text(
                              "Submit",
                              style: TextStyle(
                                  color: Color(0xFFF1EFE9),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        )
                      ]),
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
              child: Image.asset(img),
            ),
          ),
        ],
      ),
    );
  }
}
