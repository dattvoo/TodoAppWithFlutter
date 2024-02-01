import 'package:flutter/material.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final String title;
  final String imagePath;
  const CustomButtonWithIcon(
      {super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          // backgroundColor: const Color(0xFF8687E7),
          backgroundColor: Colors.transparent,
          minimumSize: const Size.fromHeight(50),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          side: const BorderSide(color: Color(0xFF8687E7))),
      onPressed: () {},
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(imagePath),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.white.withOpacity(0.87),
              fontSize: 16,
              fontFamily: 'Lato'),
        )
      ]),
    );
  }
}
