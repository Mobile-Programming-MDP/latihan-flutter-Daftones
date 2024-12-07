import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // Declaring variables
  final Color? color;
  final Color? textColor;
  final String buttonText;
  final VoidCallback? buttontapped;

  // Constructor
  MyButton({
    this.color,
    this.textColor,
    required this.buttonText,
    this.buttontapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
              color: color ?? Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor ?? Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
