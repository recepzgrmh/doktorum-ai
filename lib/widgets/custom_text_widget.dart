// lib/widgets/custom_text_widget.dart

import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final TextInputType keyboardType;
  final int maxLines;

  const CustomTextWidget({
    super.key,
    required this.title,
    required this.icon,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        keyboardType: keyboardType,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: title,
          prefixIcon: Icon(icon, color: Colors.teal),
          labelStyle: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
