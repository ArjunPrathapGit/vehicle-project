import 'package:flutter/material.dart';

class Acknowledgment extends StatefulWidget {
  final String text;
  final Function(bool?)? onChanged; 

  const Acknowledgment({super.key, required this.text, this.onChanged});

  @override
  State<Acknowledgment> createState() => _AcknowledgmentState();
}

class _AcknowledgmentState extends State<Acknowledgment> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(width: 10),
        Checkbox(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          activeColor: const Color.fromARGB(255, 68, 50, 45),
          value: value,
          onChanged: (bool? newValue) {
            setState(() {
              value = newValue;
            });
           
            if (widget.onChanged != null) {
              widget.onChanged!(newValue);
            }
          },
        ),
        Text(
          widget.text,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
