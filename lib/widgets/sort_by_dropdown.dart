import 'package:flutter/material.dart';

class SortByDropdown extends StatelessWidget {
  final String hintText;
  final List<String>? dropdownItems;
  final bool showDropdown;

  const SortByDropdown({
    super.key,
    required this.hintText,
    this.dropdownItems,
    this.showDropdown = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 254, 254, 254),
      margin: const EdgeInsets.only(top: 0, left: 16),
      height: 28, 
        width: 76,
      child: DropdownButtonFormField<String>(
        value: null,
        validator: (value) => value == null ? 'Field required' : null,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffCCB5A7),
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 218, 214, 213),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 218, 214, 213),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 218, 214, 213),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        hint: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            hintText, 
            style: TextStyle(
              color: Color(0xff44322D), 
              fontSize: 12,  
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        items: dropdownItems?.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: (value) {
         
        },
        icon: Image.asset(
          'assets/images/Vector.png',  
          height: 20,
          width: 20,
        ),
      
      ),
    );
  }
}
