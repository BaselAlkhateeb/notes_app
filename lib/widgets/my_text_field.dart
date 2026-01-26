import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    required this.hint , 
    this.maxLines,
    super.key,
  });

final String hint ; 
final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines??1,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        hintText: hint,
        hintStyle: TextStyle(color: kPrimaryColor),
      ),
    );
  }
  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white, width: 1),
      borderRadius: BorderRadius.circular(16),
    );
  }
}