import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback submitForm;
  const CustomButton(
      {super.key, required this.title, required this.submitForm});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        submitForm();
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8687E7),
          minimumSize: const Size.fromHeight(50),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)))),
      child: Text(
        title,
        style: TextStyle(
            fontFamily: "lato",
            fontSize: 16,
            color: Colors.white.withOpacity(0.87)),
      ),
    );
  }
}
