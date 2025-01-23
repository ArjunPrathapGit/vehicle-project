import 'package:flutter/material.dart';

class ShortDropDown_WithText extends StatelessWidget {
  final String fieldText;
  final String hintText;
  final List<String>? dropdownItems;
  final bool showDropdown;

  ShortDropDown_WithText({
    super.key,
    required this.fieldText,
    required this.hintText,
    this.dropdownItems,
    this.showDropdown = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14,left: 16),
      child: Container(
   
       
        color: const Color.fromARGB(255, 254, 254, 254),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5,),
              child: Text(
                fieldText,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 5),
            
               SizedBox(
               width: 156,
                  child: DropdownButtonFormField<String>(
                    validator: (value) => value == null ? 'field required' : null,
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
                      onChanged: (value) {
                      
                      },
                      icon: Image.asset(
                        'assets/images/arrow-down.png', 
                        height: 20,
                        width: 20,
                      ),
                    ),
                )
                
          ],
        ),
      ),
    );
  }
}
