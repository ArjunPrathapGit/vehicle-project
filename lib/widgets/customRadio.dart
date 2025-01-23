import 'package:flutter/material.dart';

class CustomRadioButtonListTile extends StatelessWidget {
  final String title;
  final dynamic groupValue;
  final dynamic value;
  final Color color;
  final ValueChanged<dynamic> onChanged;

  const CustomRadioButtonListTile({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.title,
    required this.onChanged,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.only(left: 2, top: 1, bottom: 1, right: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromARGB(255, 241, 239, 233),
        ),
        child: GestureDetector(
          onTap: () => onChanged(value),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _customRadioButton(),
              const SizedBox(width: 5),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customRadioButton() {
    final bool isSelected = value == groupValue;

    return Container(
      width: 26,
      height: 26,
      decoration: BoxDecoration(
        color: color == Colors.white && !isSelected ? Colors.white : color,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
            color: isSelected ? Color(0xFFBDB7B7) : Colors.white, width: 2),
      ),
      child: isSelected
          ? Icon(Icons.check,
              size: 20,
              color: color == Colors.white ? Colors.black : Colors.white)
          : null,
    );
  }
}
