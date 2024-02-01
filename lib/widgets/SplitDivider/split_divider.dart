import 'package:flutter/material.dart';

class SplitDivider extends StatelessWidget {
  const SplitDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: Container(
        height: 1,
        width: double.infinity,
        color: const Color(0xFF979797),
      )),
      const SizedBox(
        width: 2,
      ),
      const Text(
        'or',
        style: TextStyle(
          color: Color(0xFF979797),
        ),
      ),
      const SizedBox(
        width: 2,
      ),
      Expanded(
          child: Container(
        height: 1,
        width: double.infinity,
        color: const Color(0xFF979797),
      )),
    ]);
  }
}
