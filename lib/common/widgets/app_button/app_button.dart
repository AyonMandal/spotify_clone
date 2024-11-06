import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key, required this.text, this.height, required this.onPressed});

  final String text;
  final double? height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        minimumSize: Size.fromHeight(height ?? 60),
      ),
      child: Text(text),
    );
  }
}
