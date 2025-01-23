import 'package:flutter/material.dart';

class ListCardCommon  extends StatelessWidget {

  final String img;
  final String text; 
  final VoidCallback? ontap;

  const ListCardCommon
  ({super.key,required this.img,required this.text,this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        child: Container(
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
              
              children: [
                Image.asset(img,height: 24,width: 24,),
                SizedBox(width: 15,),
                Text(text,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Color(0xff181818)),),
                
              ],
            ),
          ),
        ),
        onTap: ontap,
      ),
    );

  }
}