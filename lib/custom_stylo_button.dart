library custom_stylo_button;

import 'package:flutter/material.dart';

class CustomStyloButton extends StatelessWidget {
  String? text;
  VoidCallback? onpressed;
  Color? color;
  double? radius;
  Color? textcolor;
  double? elevation;
  EdgeInsetsGeometry? padding;

  CustomStyloButton({
    super.key,
    required this.text,
    required this.onpressed,
    this.color = Colors.blue,
    this.textcolor = Colors.black,
    this.radius = 12.0,
    this.elevation = 4.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius!),
        )
      ),
      child: Text(
        text!,
        style: TextStyle(
          color: textcolor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
