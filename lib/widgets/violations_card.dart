// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors



import 'package:flutter/material.dart';

class ViolationsCard extends StatelessWidget {
  final String violationName1;
  final String violationDate1;
  final String fineAmount1;
  final Color fineAmountColor1;
   final String violationName2;
  final String violationDate2;
  final String fineAmount2;
  final Color fineAmountColor2;
  const ViolationsCard({super.key,required this.violationName1,
  required this.violationDate1,
  required this.fineAmount1,required this.fineAmountColor1,required this.violationName2,
  required this.violationDate2,
  required this.fineAmount2,required this.fineAmountColor2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 147,
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
      child: Padding(
        padding: const EdgeInsets.only(),
        child: Column(
          children: [
           
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text( violationName1,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                      SizedBox(height: 3,),
                      Text(violationDate1,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)
                  )],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 11),
                  child: Text(fineAmount1,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: fineAmountColor1)),
                )
            
              ],
            ),
            SizedBox(height: 18,),
            Container(
              height: 1,
              width: 338,
              decoration: BoxDecoration(
                color: Color(0xffF1F1F1)
              ),
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text(violationName2,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                      SizedBox(height: 3,),
                      Text(violationDate2,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)
                  )],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 11),
                  child: Text(fineAmount2,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: fineAmountColor2)),
                )
            
              ],
            ),
          ],
        ),
      ),
    );
  }
}