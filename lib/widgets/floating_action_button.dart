import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';
import 'package:notes/widgets/note_buttom_sheet.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return MyNoteButtomSheet();
          },
        );
      },
      backgroundColor: kPrimaryColor,
      shape: CircleBorder(),
      child: Icon(Icons.add, color: Colors.black),
    );
  }
}
