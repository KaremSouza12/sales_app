import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.onPressed,
    required this.buttomText,
    this.backgroundColor,
    this.foregroundColor,
    this.textColor,
    this.borderRadius = BorderRadius.zero,
  });

  final VoidCallback onPressed;
  final String buttomText;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? textColor;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 18),
            padding: const EdgeInsets.all(18),
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
              side: BorderSide(color: Theme.of(context).primaryColor),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            buttomText,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
