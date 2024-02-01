import 'package:flutter/material.dart';

enum TYPE_FORM { text, password }

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final TYPE_FORM type;
  const CustomTextField(
      {super.key,
      required this.label,
      required this.type,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.white.withOpacity(0.87)),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          style: TextStyle(color: Colors.white.withOpacity(0.8)),
          obscureText: type == TYPE_FORM.password ? true : false,
          decoration: InputDecoration(
            // fillColor: Colors.transparent,
            border: const OutlineInputBorder(borderSide: BorderSide()),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
          ),
        )
      ],
    );
  }
}
