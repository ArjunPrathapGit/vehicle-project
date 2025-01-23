import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ChoodeItemContainer extends StatelessWidget {
  final String img;
  final String txt;

  const ChoodeItemContainer({super.key,required this.img,required this.txt});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(color:Color.fromARGB(255, 225, 221, 210),
  borderType: BorderType.RRect,
  strokeWidth: 1,
  
  dashPattern: [3, 3, 3, 3],
  radius: Radius.circular(10),
 
  child: ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    child: Container(
      
      height: 90,
      width: 361,
      color: Color.fromARGB(255, 246, 245, 242),
      child: Column(
       
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(img),
          SizedBox(height: 6,),
          Text(txt,style: TextStyle(fontSize: 14),),
        ],
      ),
    ),
  ),
);
  }
}