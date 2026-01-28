import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    required this.hint,
    this.onSaved,
    this.maxLines,
    super.key,
  });

  final String hint;
  final int? maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if(value?.isEmpty??true){
          return 'this field is required';
        }
        return null;
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines ?? 1,
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
