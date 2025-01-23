// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicleproject/screens/residential%20subscription%20details%20screen/widgets/subscriptions_card.dart';
import 'package:vehicleproject/screens/update_your_vehicle_screen/update_your_vehicle_screen.dart';
import 'package:vehicleproject/widgets/buttons.dart';
import 'package:vehicleproject/widgets/vehicleDetails.dart';

class ResidentialSubscriptionDetails extends StatelessWidget {
  const ResidentialSubscriptionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              "assets/images/arrow-left.png",
              height: 24,
              width: 24,
            )),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xFFE1DDD2),
        title: Text(
          "Residential Subscription Details",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 13, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Subscriptions_Card(),
              SizedBox(
                height: 20,
              ),
              Text("Subscription Details",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 90,
                width: MediaQuery.of(context).size.width*0.92,
                decoration: BoxDecoration(
                    color: Color(0xffFAFAFA),
                    border: Border.all(color: Color(0xffF2F2F2)),
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, top: 19, right: 13, bottom: 11),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Started Date",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "24 Sep, 2024",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Expiry Date",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          Container(
                            height: 14,
                            width: 36,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFF118619)),
                            child: Center(
                                child: Text(
                              "Active",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400),
                            )),
                          ),
                          Text(
                            "24 Nov, 2025",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text("Vehicle  Details",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 9,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: VehicleDetails(
                  carImg: "assets/images/car1 1.png",
                  carModelName: '7403 TNJ',
                  carType: 'Sedan',
                  carYear: '2016',
                  carmodelNumber: '911 GT2 RS',
                  color: Color(0xffE31212),
                  purpose: 'Private',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              DottedBorder(
                color: Color(0xff94684E),
                borderType: BorderType.RRect,
                strokeWidth: 0.5,
                dashPattern: [3, 3, 3, 3],
                radius: Radius.circular(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  child: Container(
                    height: 114,
                    width: MediaQuery.of(context).size.width*0.92,
                    color: Color(0xffF5F0EE),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 11, left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 37,
                                width: 37,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Image.asset("assets/images/car.png"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Change Vehicle",
                                    style: TextStyle(
                                        color: Color(0xff44322D),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text:
                                                "Would you like to change your vehicle for just",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xff94684E),
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                          text: '15 SAR',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                        TextSpan(
                                            text:
                                                '.\nVehicle can only be changed once.',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xff94684E),
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 225),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => UpdateYourVehicleScreen(),));
                              },
                              child: Container(
                                height: 25,
                                width: 113,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(34),
                                    border: Border.all(color: Color(0xff94684E)),
                                    color: Colors.white),
                                child: Center(
                                    child: Text(
                                  "Change Vehicle",
                                  style: TextStyle(
                                      color: Color(0xff94684E),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Payment  Details",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 174,
                width: MediaQuery.of(context).size.width*0.92,
                decoration: BoxDecoration(
                    color: Color(0xffFAFAFA),
                    border: Border.all(color: Color(0xffF2F2F2)),
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 13, top: 13),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total amount paid",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '3400',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff44322D),
                                      fontSize: 16),
                                ),
                                TextSpan(
                                    text: " SAR",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff44322D),
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "VAT Amount",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '200',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff44322D),
                                      fontSize: 16),
                                ),
                                TextSpan(
                                    text: " SAR",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff44322D),
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                        height: 2,
                        width: 331,
                        decoration: BoxDecoration(color: Color(0xffE8E8E8)),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Amount",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '3400',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff44322D),
                                      fontSize: 18),
                                ),
                                TextSpan(
                                    text: " SAR",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff44322D),
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 2,
                        width: 331,
                        decoration: BoxDecoration(color: Color(0xffF3F3F3)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payment Method",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                          Image.asset(
                            "assets/images/apple_pay.png",
                            height: 34,
                            width: 52,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Buttons(
                  color: Color(0xFF44322D),
                  text: 'Renew Subscription ',
                  onPressed: () {},
                  textColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
