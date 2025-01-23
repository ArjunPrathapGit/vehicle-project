// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyWalletCard extends StatelessWidget {
  final VoidCallback ontap;
  const MyWalletCard({super.key,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 138,
      width: MediaQuery.of(context).size.width*0.92,
      decoration: BoxDecoration(
        color: Color(0xff44322D),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13,top: 15),
                child: Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27.3),
                    color: Color.fromARGB(255, 83, 67, 61)
                  ),
                  child:Image.asset("assets/images/empty-wallet.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16,left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My Wallet Balance",style: TextStyle(color: Color(0xff94684E,),fontSize: 14,fontWeight: FontWeight.w500),),
                    SizedBox(height: 5,),
                    Image.asset("assets/images/102.25 SAR.png"),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 23,),
          Container(
            height: 1,
            width: 338,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 120, 106, 99)
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15,top: 15),
                child: GestureDetector(
                  onTap: ontap,
                  child: Container(
                    height: 27,
                    width: 107,
                    decoration: BoxDecoration(
                      color: Color(0xffE1DDD2),
                      borderRadius: BorderRadius.circular(34)
                    ),
                    child: Center(child: Text("Recharge Wallet",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff44322D)),)),
                  ),
                ),
              ),
              
            ],
          ),
          
        ],
      ),
    );
  }
}
