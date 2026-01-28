import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    this.onPressed
  });
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
        child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
