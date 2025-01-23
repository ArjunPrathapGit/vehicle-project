import 'package:flutter/material.dart';

class TextFormFieldd extends StatelessWidget {
    final String hintText;
    final TextEditingController controller;

   TextFormFieldd({super.key,required this.hintText,required this.controller,});

  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: const EdgeInsets.only(top: 12,right: 5),
      child: Container(
        width: 140,
        child: SizedBox(height: 50,
          child: SizedBox(
            height: 163,
            child: TextFormField(
              validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter $hintText';
                  }
                  return null;
                },
                      controller: controller,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255,254,254,254),
                          focusColor: Color.fromARGB(255,254,254,254),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color.fromARGB(255, 218, 214, 213), width: 2.0),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color.fromARGB(255, 218, 214, 213), width: 2.0),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color.fromARGB(255, 218, 214, 213), width: 2.0),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          hintText:hintText,
                          hintStyle: const TextStyle(color: Color.fromARGB(255, 205, 205, 205),fontSize: 14,fontWeight: FontWeight.w500),
                        ),
                      ),
          ),
        ),
      ),
    );
  }
}