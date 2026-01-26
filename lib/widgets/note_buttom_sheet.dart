import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';
import 'package:notes/widgets/my_button.dart';
import 'package:notes/widgets/my_text_field.dart';

class MyNoteButtomSheet extends StatelessWidget {
  const MyNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyTextField(hint: 'Title'),
            SizedBox(height: 20),
            MyTextField(hint: 'Content', maxLines: 5),
            SizedBox(height: 30),
            MyButton(),
          ],
        ),
      ),
    );
  }
}

