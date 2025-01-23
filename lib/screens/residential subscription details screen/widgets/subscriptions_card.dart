// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Subscriptions_Card extends StatelessWidget {
  const Subscriptions_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161,
      width: MediaQuery.of(context).size.width*0.92,
      decoration: BoxDecoration(
        
        color: Color(0xffF5F0EE),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 12,right: 16),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Subscription - Zone A",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff94684E)),),
                    SizedBox(width: 9,),

                    Container(
                      height: 22,
                      width: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffCCB5A7)),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("On Street",style: TextStyle(color: Color(0xff94684E),fontSize: 12),)),

                    )
                  ],
                ),
                SizedBox(height: 9,),
                 Text("Get access to real-time parking availability,\nsecure bookings...",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff4D4D4D))),
                 SizedBox(height: 12,),

                 Container(
                  height:1,
                  width: 338,
                  decoration: BoxDecoration(
                    color: Color(0xffCCB5A7)
                  ),
                 ),
                 SizedBox(height: 2,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Parking Timing ",style: TextStyle(color: Color(0xff878686),fontSize: 10,fontWeight: FontWeight.w400),),
                    Text("10:00 AM - 05:00PM",style: TextStyle(color: Color(0xff1E1E1E),fontSize: 12,fontWeight: FontWeight.w500))
                  ],
                 )
              ],
            ),
          ),
         
      
          Container(
            height: 42,
            width: 361,
            decoration: BoxDecoration(
              color: Color(0xff44322D),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16))
                
            ),
            child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Text("",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Text("250 SAR",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xffCCB5A7)),),
                )
              ],
            ),
          )
          
          
          
          
        ],
      ),
    );
  }
}