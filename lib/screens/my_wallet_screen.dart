// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vehicleproject/screens/recharge%20wallet%20screen/recharge_wallet_screen.dart';

import 'package:vehicleproject/widgets/my_wallet_card.dart';
import 'package:vehicleproject/widgets/sort_by_dropdown.dart';
import 'package:vehicleproject/widgets/violations_card.dart';
import 'package:vehicleproject/widgets/wallet_recharge_card.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({super.key});

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {
  final List<String> categories = [
    "All",
    "Recharge",
    "Booking",
    "Violation",
  ];
  int selectedCategoryIndex = 0;
  void _onCategoryTap(int index) {
    setState(() {
      selectedCategoryIndex = index;
      _updateSelectedCategory(index);
    });
  }

  void _updateSelectedCategory(int index) {}

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
          child: Image.asset("assets/images/arrow-left.png",height: 24,width: 24,)),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xFFE1DDD2),
        title: Text(
          "My Wallet",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 25),
              child: MyWalletCard(ontap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => RechargeWalletScreen(),));
              },),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 30),
              child: Text(
                "Transaction History",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff181818)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16,top: 10),
              child: 
                 SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                   child: Row(
                     children: [SortByDropdown(
                       hintText: "Sort by",
                       dropdownItems: ["date", "amt"],
                       showDropdown: true,
                     ),
                     Container(
                       decoration: BoxDecoration(
                      
                       ),
                       height: 38,
                       child: ListView.builder(
                         scrollDirection: Axis.horizontal,
                         itemCount: categories.length,
                         shrinkWrap: true,
                         itemBuilder: (context, index) {
                           return GestureDetector(
                             onTap: () => _onCategoryTap(index),
                             child: Container(
                               margin: EdgeInsets.all(5),
                               padding: EdgeInsets.symmetric(
                                   horizontal: 15,), 
                               decoration: BoxDecoration(border: Border.all(color:Color(0xffE1DDD2) ),
                                 color: selectedCategoryIndex == index
                                     ? const Color(0xff44322D)
                                     : Colors.transparent,
                                 borderRadius: BorderRadius.circular(25),
                                 
                               ),
                               alignment: Alignment.center,
                               child: Text(
                                 categories[index],
                                 style: TextStyle(color: selectedCategoryIndex == index? Colors.white:Color(0XFF94684E)),
                                 textAlign: TextAlign.center,
                               ),
                             ),
                           );
                         },
                       ),
                     ),
                                     ]),
                 ),
              
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Today",style: TextStyle(color: Color(0xff9A9A9A),fontWeight:FontWeight.w500 ),),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: WalletRecharge_Card(),
            ),
            SizedBox(height: 20,),
             Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Yesterday",style: TextStyle(color: Color(0xff9A9A9A),fontWeight:FontWeight.w500 ),),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: ViolationsCard(violationName1: 'Violation settlement',fineAmount1: "-40 SAR",violationDate1: "14-11-2024, 12:40 AM",fineAmountColor1:Color(0xffFF7070) ,violationName2: "Parking spot booking ",violationDate2: "14-11-2024, 06:30 AM",fineAmount2: "-2 SAR",fineAmountColor2: Color(0xffFF7070),),
            ),
             SizedBox(height: 20,),
             Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text("12 Nov 2024",style: TextStyle(color: Color(0xff9A9A9A),fontWeight:FontWeight.w500 ),),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: ViolationsCard(violationName1: 'Violation settlement',fineAmount1: "-80 SAR",violationDate1: "14-11-2024, 12:40 AM",fineAmountColor1:Color(0xffFF7070) ,violationName2: "Wallet Recharge",violationDate2: "14-11-2024, 06:30 AM",fineAmount2: "+500 SAR",fineAmountColor2: Color(0xff20BF14),),
            ),
            SizedBox(height: 30,),
        
          ],
        ),
      ),
    );
  }
}
