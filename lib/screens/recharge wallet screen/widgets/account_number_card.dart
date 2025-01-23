// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AccountNumberCard extends StatelessWidget {
  const AccountNumberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 138,
      width:MediaQuery.of(context).size.width*0.92,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          
      color: Colors.grey.shade300,
      blurRadius: 20.0,
      spreadRadius: 0
    ),],
        color: Color.fromARGB(255, 253, 253, 253),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 23),
            child: Column(
              children: [
                Text("My Account Number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                 Text("966 ** *** *456",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Color(0xff94684E))),
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
                  child: Text("CURRENT BALANCE",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: Text("102.25 SAR",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xffCCB5A7)),),
                )
              ],
            ),
          )
          
          
          
          
        ],
      ),
    );
  }
}