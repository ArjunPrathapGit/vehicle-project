import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicleproject/screens/auth/sign_up/signup_provider.dart';

class FieldnameWithTextfieldForEmail extends StatelessWidget {
  final String fieldText;
  final String hintText;
  final TextEditingController controller;
  final String? errorText; // Error text passed from the parent widget
  final void Function(String)? onChanged; // Callback to handle input changes

  const FieldnameWithTextfieldForEmail({
    super.key,
    required this.fieldText,
    required this.hintText,
    required this.controller,
    this.errorText,
    this.onChanged,
  });
  static final RegExp emailRegExp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"); 
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
            SizedBox(
              child: TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return "enter the email";
                  }
                   if(emailRegExp.hasMatch(value)){
                    return null;
                  }else{
                    return "enter a valid email";
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
