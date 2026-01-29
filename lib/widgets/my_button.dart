import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.onPressed, this.isLoading = false});
  final void Function()? onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed:isLoading?null: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
        child: (isLoading == true)
            ? SizedBox(
              width: 20,
              height: 20,
                child: CircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 2,
                ),
              )
            : Text(
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
