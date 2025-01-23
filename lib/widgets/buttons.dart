import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  const Buttons({super.key, required this.color, required this.text,required this.onPressed,required this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: () => onPressed(),
      child: Container(
        height: 50,
       
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color:color,
          
        ),
        child: Center(child: Text(text,style: TextStyle(color:textColor,fontSize: 16,fontWeight: FontWeight.w500 ),)),
      ),
    );
  }
}