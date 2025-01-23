import 'package:flutter/material.dart';

class ListCard
 extends StatelessWidget {
  const ListCard
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width*0.88,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(
          
      color: Colors.grey.shade200,
      blurRadius: 10.0,
      spreadRadius: 0
    ),]
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 17,right: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("assets/images/globals.png",height: 24,width: 24,),
                SizedBox(width: 15,),
                Text("Language",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Color(0xff181818)),)
              ],
            ),
            Container(
                height: 26,
                width: 59,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0xffCCB5A7)),
                  color: Color(0xffDE542D).withOpacity(0.1),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "EN",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      "assets/images/global.png",
                      height: 16,
                      width: 16,
                    ),
                  ],
                ),
              ),
            
          ],
        ),
      ),
    );

  }
}