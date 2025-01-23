

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class WalletRecharge_Card extends StatelessWidget {
  const WalletRecharge_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79,
      width: MediaQuery.of(context).size.width*0.92,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12),
         boxShadow: [BoxShadow(
          
      color: Colors.grey.shade300,
      blurRadius: 20.0,
      spreadRadius: 0
    ),]
      ),
      child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text("Wallet Recharge",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                SizedBox(height: 3,),
                Text("15-11-2024, 11:30 AM",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)
            )],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 11),
            child: Text("+800 SAR",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Color(0xff20BF14))),
          )

        ],
      ),
    );
  }
}