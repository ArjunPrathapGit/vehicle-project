import 'package:flutter/material.dart';


class FieldnameWithTextfield extends StatelessWidget {
  final String fieldText;
  final String hintText;
  final TextEditingController controller;
  final String? errorText; // Error text passed from the parent widget
  
  

  const FieldnameWithTextfield({
    super.key,
    required this.fieldText,
    required this.hintText,
    required this.controller,
    this.errorText,
    
  });
  static final RegExp nameRegExp = RegExp('[a-zA-Z]'); 
  static final RegExp numberRegExp = RegExp(r'\d');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:15 ),
      child: Container(
        color: const Color.fromARGB(255, 254, 254, 254),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              fieldText,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 5),
            Container(
            
              child: TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return "enter your name";
                  }
                  else if(value.length<4){
                    return "Name should contain atleast 4 alphabets";
                  }
                },
        
        
                controller: controller,
                
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 254, 254, 254),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 218, 214, 213), width: 2.0),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 218, 214, 213), width: 2.0),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 218, 214, 213), width: 2.0),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  hintText: hintText,
                
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 205, 205, 205),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),

            

          ],
        ),
      ),
    );
  }
}
