import 'package:flutter/material.dart';

class WalkthroughModel extends StatelessWidget {
  final String img;
  final String heading;
  final String description;
  const WalkthroughModel({super.key,required this.img,required this.heading,required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 156),
      child: Column(
        children: [
          Container(
            height: 331,
            width: 331,
            child: Image.asset(img),
            
          ),
          SizedBox(height: 40,),
          Text(heading,textAlign: TextAlign.center, style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Color(0xff94684E)),),
          Text(description,textAlign: TextAlign.center, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff959595)),),
        ],
      ),
    );
  }
}