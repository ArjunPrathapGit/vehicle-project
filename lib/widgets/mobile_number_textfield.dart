import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FieldnameWithTextfieldforMobile extends StatefulWidget {
  final String fieldText;
  final String hintText;
  final TextEditingController controller;
  final ValueChanged<String> onCountryCodeChanged;//imp
  final String? errorText; 
  final void Function(String)? onChanged; 
  
 
  const FieldnameWithTextfieldforMobile({
    super.key,
    required this.fieldText,
    required this.hintText,
    required this.controller,
    required this.onCountryCodeChanged,//imp
    this.errorText,
    this.onChanged,
   
  });

  

  @override
  _FieldnameWithTextfieldforMobileState createState() => _FieldnameWithTextfieldforMobileState();
}

class _FieldnameWithTextfieldforMobileState extends State<FieldnameWithTextfieldforMobile> {
  
  final List<String> countryCodes = ['+966', '+971', '+968'];
  String selectedCountryCode = '+966';
  final mobileNode = FocusNode(); 

   

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.fieldText,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 5),

         TextFormField(
          focusNode: mobileNode,
          keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(9), 
                    ],
          controller: widget.controller,
                validator: (value) {
                      if(value!.isEmpty){
                        return "Please enter mobile number";
                      }else if (value.length<9){
                        return "Please enter full digits";
                      }
                    },
                     decoration: InputDecoration(
                     
                      
                      

                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(mainAxisSize: MainAxisSize.min,
                          children: [
                            DropdownButton<String>(
                            value: selectedCountryCode,
                            underline: const SizedBox(), 
                            onChanged: (newValue) {
                             setState(() {
                               selectedCountryCode=newValue!;
                             });
                             widget.onCountryCodeChanged(selectedCountryCode);
                            },
                            items: countryCodes.map((code) {
                              return DropdownMenuItem<String>(
                                value: code,
                                child: Text(
                                  code,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              );
                            }).toList(),
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                                                ),
                                                Container(
                                                  width: 1,
                                                  height: 16,
                                                  color: Colors.grey,
                                                ),
                                                SizedBox(width: 10,)
                          ],
                        ),
                      ),
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
                  hintText: widget.hintText,
                
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 205, 205, 205),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
         )
          // Container(
            
          //   decoration: BoxDecoration(
          //     color: Colors.grey,
          //     border: Border.all(
          //       color: const Color.fromARGB(255, 218, 214, 213),
          //       width: 2.0,
          //     ),
          //     borderRadius: BorderRadius.circular(25),
          //   ),
          //   child: Container(height:50,
          //     child: Row(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.symmetric(horizontal: 10),
          //           child: DropdownButton<String>(
          //             value: selectedCountryCode,
          //             underline: const SizedBox(), 
          //             onChanged: (newValue) {
          //              setState(() {
          //                selectedCountryCode=newValue!;
          //              });
          //              widget.onCountryCodeChanged(selectedCountryCode);
          //             },
          //             items: countryCodes.map((code) {
          //               return DropdownMenuItem<String>(
          //                 value: code,
          //                 child: Text(
          //                   code,
          //                   style: const TextStyle(
          //                     fontSize: 14,
          //                     fontWeight: FontWeight.w500,
          //                   ),
          //                 ),
          //               );
          //             }).toList(),
          //             icon: const Icon(
          //               Icons.arrow_drop_down,
          //               color: Colors.grey,
          //             ),
          //           ),
          //         ),
          //         Container(height: 23, width: 1, color: Colors.grey),
          //         Expanded(
          //       child: Container(height: 70,
          //         child: TextFormField(
          //           validator: (value) {
          //             if(value!.isEmpty){
          //               return "Please enter  phone number";
          //             }else if (value.length<9){
          //               return "Please enter 9 digits";
          //             }
          //           },
                   
          //           controller: widget.controller,
          //           keyboardType: TextInputType.phone,
          //           inputFormatters: [
          //             FilteringTextInputFormatter.digitsOnly,
          //             LengthLimitingTextInputFormatter(9), 
          //           ],
                    
          //           decoration: InputDecoration(
          //             border: InputBorder.none,
          //             hintText: widget.hintText,
          //             contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          //             hintStyle: const TextStyle(
          //               color: Color.fromARGB(255, 205, 205, 205),
          //               fontSize: 14,
          //               fontWeight: FontWeight.w500,
          //             ),
                      
          //           ),
          //         ),
          //       ),
          //     ),
              
              
          //       ],
          //     ),
          //   ),
          // ),
          
        ],
      ),
    );
  }
} 