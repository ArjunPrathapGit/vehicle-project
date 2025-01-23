import 'package:flutter/material.dart';

class DropdownwithTextfield extends StatelessWidget {
  final String fieldText;
  final String hintText;
  final List<String>? dropdownItems;
  final bool showDropdown;
  final TextEditingController controller;
  final String? defaultValue;
  final Function(String?)? onChanged; 

  DropdownwithTextfield({
    super.key,
    required this.fieldText,
    required this.hintText,
    this.dropdownItems,
    this.showDropdown = false,
    required this.controller,
    this.defaultValue,
    this.onChanged, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        color: const Color.fromARGB(255, 254, 254, 254),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                fieldText,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 2),
            SizedBox(
             
              child: DropdownButtonFormField<String>(
                value: defaultValue ?? (dropdownItems?.isNotEmpty == true ? dropdownItems!.first : null),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 254, 254, 254),
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
                hint: Text(
                  hintText,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 205, 205, 205),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                items: dropdownItems?.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: onChanged, 
                icon: Image.asset(
                  'assets/images/arrow-down.png',
                  height: 20,
                  width: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
