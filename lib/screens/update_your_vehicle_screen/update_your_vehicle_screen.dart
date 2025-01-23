// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vehicleproject/screens/update_your_vehicle_screen/widgets/vehicle_containers.dart';
import 'package:vehicleproject/widgets/buttons.dart';
import 'package:vehicleproject/widgets/sucess_primary_vehicle_alert.dart';

class UpdateYourVehicleScreen extends StatefulWidget {
  const UpdateYourVehicleScreen({super.key});

  @override
  State<UpdateYourVehicleScreen> createState() => _UpdateYourVehicleScreenState();
}

class _UpdateYourVehicleScreenState extends State<UpdateYourVehicleScreen> {

  List <String> vehiclModelList = [
   "7250 TNJ",
   "1110 TNJ"

  ];
   List <String> vehiclNameList = [
   "Toyota Camry",
   "Nissan Patrol"

  ];

  // ignore: unused_field
  int _selectedItem = 0;
  selectItem(index) {
        setState(() {
          _selectedItem = index;
          print(selectItem.toString());
        });
      }

     int selectedPaymentIndex=1;
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
          "Update Your Vehicle",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16,right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25,),
              Text("Change Vehicle",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    SizedBox(height: 6,),
                    Text("Choose one vehicle that you would like replace\nthe current one",style: TextStyle(color: Color(0xff959595),fontSize: 14,fontWeight: FontWeight.w400),),
                    SizedBox(height: 10,),
                    Container(
                height: 40,
                width: MediaQuery.of(context).size.width*0.92,
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
                        "Please note that changing your vehicle is only\nallowed once",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                   
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16,),
               Text("Select Vehicles",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                  SizedBox(height: 12,),
                  SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      DottedBorder(
        color: Color(0xFF8CC525),
        borderType: BorderType.RRect,
        strokeWidth: 1,
        dashPattern: [4, 4, 4, 4],
        radius: Radius.circular(14),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 35,  
              color: Color.fromARGB(255, 243, 249, 233),
              child: Image.asset("assets/images/add.png"),
            ),
          ),
        ),
      ),
      SizedBox(width: 8),
      Container(
        height: 55,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: vehiclModelList.length,
          itemBuilder: (context, index) {
            return VehicleContainers(
              isSelected: _selectedItem == index,
              index: index,
              selectItem: selectItem,
              vehicleModel: vehiclModelList[index],
              vehicleName: vehiclNameList[index],
            );
          },
        ),
      ),
    ],
  ),
),

                  SizedBox(height: 29,),
                  Container(
                height: 135,
                width: 361,
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
                            "Amount",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '15',
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
                                  text: '0.25',
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
                        height: 1,
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
                                  text: '15.25',
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
                      
                   
                     
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),

            //////
            Container(
                height: 135,
                width: 361,
                decoration: BoxDecoration(
                    color: Color(0xffFAFAFA),
                    border: Border.all(color: Color(0xffF2F2F2)),
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 13, top: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Wallet Balance"),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '100',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff44322D),
                                          fontSize: 22),
                                    ),
                                    TextSpan(
                                        text: " SAR",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xff44322D),
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              
                            },
                            child: Container(
                              height: 18,
                              width: 75,
                              child: Row(
                                children: [
                                  Image.asset("assets/images/add-circle.png"),
                                  SizedBox(width: 5,),
                                  Text("Add Money",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),)
                                ],
                              ),
                              
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 18,),
                       Container(
                        height: 1,
                        width: 331,
                        decoration: BoxDecoration(color: Color(0xffE8E8E8)),
                      ),
                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Money will be deducted from\nyour in-app wallet.",style: TextStyle(color: Color(0xff808080),fontSize: 12,fontWeight: FontWeight.w500), ),

                          Container(
                            height:28 ,
                            width: 123,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff44322D)),
                              borderRadius: BorderRadius.circular(38)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [Text("Pay With Wallet",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff44322D)) ,),
                                Image.asset("assets/images/arrow-right.png",height: 18,width: 18,)
                                ],
                              ),
                            ),
                          )
                      
                        ],
                      )
                      
                   
                     
                    ],
                  ),
                ),
              ),
              SizedBox(height: 22,),
              Text("Other Payment Method",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
              SizedBox(height: 15,),

              Row(
                children: [

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedPaymentIndex=1;
     
                        
                      });
                    },
                    child: Container(
                      height: 56,
                      width: 104,
                      decoration: BoxDecoration(
                        color: Color(0xffF4F0ED),
                        border: selectedPaymentIndex==1?Border.all(color: Color(0xff44322D)):Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(16)
                    
                      ),
                      child: Image.asset("assets/images/image 7 (1).png"),
                    ),
                  ),
                  SizedBox(width: 8,),
                  GestureDetector(
                    onTap: () {
                       setState(() {
                        selectedPaymentIndex=2;
     
                        
                      });
                      
                    },
                    child: Container(
                      height: 56,
                      width: 104,
                      decoration: BoxDecoration(
                        color: Color(0xffF4F0ED),
                         border: selectedPaymentIndex==2?Border.all(color: Color(0xff44322D)):Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(16)
                    
                      ),
                      child: Image.asset("assets/images/card.png"),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 31,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Buttons(
                  color: Color(0xFF44322D),
                  text: 'Update & Make Payment ',
                  onPressed: () {
                    showModalBottomSheet(
                       backgroundColor: Colors.transparent,
                      context: context,  builder: (builder){
                      return SuccessPrimaryVehicleAlert(alertHeading:"Your payment has been successfully processed!" ,

                      alertText: "Your vehicle changed successfully.Thank you !",

                      
                      onTap: () {
                        
                      },);
                    });
                  },
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