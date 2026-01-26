import 'package:flutter/material.dart';
import 'package:notes/widgets/my_app_bar.dart';
import 'package:notes/widgets/my_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MyAppBar(text: 'Edit Note', icon: Icons.check,),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20,),
              MyTextField(hint: 'Title'),
              SizedBox(height: 20),
              MyTextField(hint: 'Content', maxLines: 5),
             
            ],
          ),
      ), 
    );
  }
}