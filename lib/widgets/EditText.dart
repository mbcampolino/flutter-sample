import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  final String labelText;
  final String hint;
  final TextEditingController controller;
  final double fontSize;
  final Icon icon;

  const EditText({this.labelText, this.hint, this.controller, this.fontSize,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: fontSize),
        decoration: InputDecoration(
            labelText: labelText, hintText: hint, icon: icon),
      ),
    );
  }
}
