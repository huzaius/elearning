import 'package:flutter/material.dart';

class HeaderTextField extends StatelessWidget {
  final String text;
  final Widget child;

   const HeaderTextField({
    super.key,
    required this.text,
    this.child =  const SizedBox()
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 6),
        child,
      ],
    );
  }
}
