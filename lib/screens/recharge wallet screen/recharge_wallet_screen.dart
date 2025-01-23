// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vehicleproject/screens/recharge%20wallet%20screen/widgets/account_number_card.dart';
import 'package:vehicleproject/screens/residential%20subscription%20details%20screen/residential_subscription_details_Screen.dart';
import 'package:vehicleproject/widgets/buttons.dart';
import 'package:vehicleproject/widgets/fieldName_with_Textfield.dart';

class RechargeWalletScreen extends StatefulWidget {
  const RechargeWalletScreen({super.key});

  @override
  State<RechargeWalletScreen> createState() => _RechargeWalletScreenState();
}

class _RechargeWalletScreenState extends State<RechargeWalletScreen> {
  int selectedCategoryIndex = 3;

  TextEditingController fieldnameWithTextfield_controller =
      TextEditingController();

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
          "Recharge Wallet",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: AccountNumberCard(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 30),
              child: Text(
                "Choose Recharge Amount ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff181818)),
              ),
            ),
            // Container(

            //   height: 85,
            //            width: 361,

            //            decoration: BoxDecoration(
            //              borderRadius: BorderRadius.circular(11),
            //           color: Color.fromARGB(255, 116, 224, 125)
            //            ),

            //            child: ListView.builder(
            //                  shrinkWrap: false,
            //              scrollDirection: Axis.horizontal,
            //              itemCount: amount.length,
            //              itemBuilder: (context, index) {
            //                return GestureDetector(
            //                  onTap: () => _onCategoryTap(index),
            //                  child: Container(

            //                    width: selectedCategoryIndex == index?80:70,
            //                    height: selectedCategoryIndex==index?75:68,

            //                    decoration: BoxDecoration(
            //                      borderRadius: BorderRadius.circular(11),
            //                      border: Border.all(color:Color(0xffE1DDD2) ),
            //                      color: selectedCategoryIndex == index
            //              ? const Color(0xff44322D)
            //              : Color(0xffE1DDD2),

            //                    ),
            //                    alignment: Alignment.center,
            //                    child: Text(
            //                      amount[index],
            //                      style: TextStyle(color: selectedCategoryIndex == index? Colors.white:Color(0XFF94684E)),
            //                      textAlign: TextAlign.center,
            //                    ),
            //                  ),
            //                );
            //              },
            //            ),
            // ),
            SizedBox(
              height: 23,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategoryIndex = 1;
                      });
                    },
                    child: Container(
                      height: selectedCategoryIndex == 1 ? 67 : 56,
                      width: selectedCategoryIndex == 1 ? 75 : 62,
                      decoration: BoxDecoration(
                        color: selectedCategoryIndex == 1
                            ? Color(0xff44322D)
                            : Color(0xffE1DDD2),
                        borderRadius: selectedCategoryIndex == 1
                            ? BorderRadius.circular(11)
                            : BorderRadius.only(
                                topLeft: Radius.circular(11),
                                bottomLeft: Radius.circular(11)),
                      ),
                      child: Center(
                          child: Text(
                        "30\n SAR",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: selectedCategoryIndex == 1
                                ? Color(0xffFFFFFF)
                                : Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategoryIndex = 2;
                      });
                    },
                    child: Container(
                      height: selectedCategoryIndex == 2 ? 67 : 56,
                      width: selectedCategoryIndex == 2 ? 75 : 62,
                      decoration: BoxDecoration(
                        color: selectedCategoryIndex == 2
                            ? Color(0xff44322D)
                            : Color(0xffE1DDD2),
                        borderRadius: selectedCategoryIndex == 2
                            ? BorderRadius.circular(11)
                            : BorderRadius.circular(0),
                      ),
                      child: Center(
                          child: Text(
                        "1\n SAR",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: selectedCategoryIndex == 2
                                ? Color(0xffFFFFFF)
                                : Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategoryIndex = 3;
                      });
                    },
                    child: Container(
                      height: selectedCategoryIndex == 3 ? 67 : 56,
                      width: selectedCategoryIndex == 3 ? 75 : 62,
                      decoration: BoxDecoration(
                        color: selectedCategoryIndex == 3
                            ? Color(0xff44322D)
                            : Color(0xffE1DDD2),
                        borderRadius: selectedCategoryIndex == 3
                            ? BorderRadius.circular(11)
                            : BorderRadius.circular(0),
                      ),
                      child: Center(
                          child: Text(
                        "2\n SAR",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: selectedCategoryIndex == 3
                                ? Color(0xffFFFFFF)
                                : Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategoryIndex = 4;
                      });
                    },
                    child: Container(
                      height: selectedCategoryIndex == 4 ? 67 : 56,
                      width: selectedCategoryIndex == 4 ? 75 : 62,
                      decoration: BoxDecoration(
                        color: selectedCategoryIndex == 4
                            ? Color(0xff44322D)
                            : Color(0xffE1DDD2),
                        borderRadius: selectedCategoryIndex == 4
                            ? BorderRadius.circular(11)
                            : BorderRadius.circular(0),
                      ),
                      child: Center(
                          child: Text(
                        "3\nSAR",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: selectedCategoryIndex == 4
                                ? Color(0xffFFFFFF)
                                : Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategoryIndex = 5;
                      });
                    },
                    child: Container(
                      height: selectedCategoryIndex == 5 ? 67 : 56,
                      width: selectedCategoryIndex == 5 ? 75 : 62,
                      decoration: BoxDecoration(
                        color: selectedCategoryIndex == 5
                            ? Color(0xff44322D)
                            : Color(0xffE1DDD2),
                        borderRadius: selectedCategoryIndex == 5
                            ? BorderRadius.circular(11)
                            : BorderRadius.only(
                                topRight: Radius.circular(11),
                                bottomRight: Radius.circular(11)),
                      ),
                      child: Center(
                          child: Text(
                        "4\n SAR",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: selectedCategoryIndex == 5
                                ? Color(0xffFFFFFF)
                                : Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: FieldnameWithTextfield(
                controller: fieldnameWithTextfield_controller,
                fieldText: "Enter Amount Manually (Up to 5000SAR)",
                hintText: "Enter Amount in SAR",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 30),
              child: Text(
                "Other Payment Method ",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff181818)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Container(
                    height: 56,
                    width: 104,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffF4F0ED)),
                    child: Image.asset(
                      "assets/images/image 7.png",
                      height: 34,
                      width: 52,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 56,
                    width: 104,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffF4F0ED)),
                    child: Image.asset(
                      "assets/images/Group 1597881904.png",
                      height: 56,
                      width: 104,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width*0.93,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xffF8F8F8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/info-circle.png",
                        height: 14,
                        width: 14,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Wallet recharges are non-refundable. Ensure the amount\nenteredis correct before proceeding with the transaction.",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Buttons(
                  color: Color(0xff44322D),
                  text: "Pay Now",
                  onPressed: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        context: context,
                        builder: (builder) {
                          return SizedBox(
                            height: 444,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(25),
                                              topRight: Radius.circular(25))),
                                      height: 365.0,
                                      width: 369,
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 90,
                                          ),
                                          const Text(
                                            "Wallet Recharge Successful",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff94684E)),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Text(
                                            "Your wallet has been successfully recharged.",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          const SizedBox(
                                            height: 60,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.symmetric(horizontal: 16),
                                            child: Buttons(
                                              color: Color(0xFF44322D),
                                              text: 'Done',
                                              onPressed: () {
                                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResidentialSubscriptionDetails(),)
                                                );
                                            
                                            
                                              },
                                              textColor: Colors.white,
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
                                    child: Image.asset(
                                        'assets/images/Group 3.png'),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  textColor: Color(0xffE1DDD2)
                  ),
                  
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
