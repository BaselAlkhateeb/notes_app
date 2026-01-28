import 'package:flutter/material.dart';
import 'package:notes/widgets/my_button.dart';
import 'package:notes/widgets/my_text_field.dart';

class MyNoteButtomSheet extends StatefulWidget {
  const MyNoteButtomSheet({super.key});

  @override
  State<MyNoteButtomSheet> createState() => _MyNoteButtomSheetState();
}

class _MyNoteButtomSheetState extends State<MyNoteButtomSheet> {
  final GlobalKey<FormState> myKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          autovalidateMode: autovalidateMode,
          key: myKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyTextField(
                hint: 'Title',
                onSaved: (value) {
                  title = value;
                },
              ),
              SizedBox(height: 20),
              MyTextField(
                hint: 'Content',
                maxLines: 5,
                onSaved: (value) {
                  subTitle = value;
                },
              ),
              SizedBox(height: 30),
              MyButton(
                onPressed: () {
                  if (myKey.currentState!.validate()) {
                    myKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.onUserInteraction;
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
