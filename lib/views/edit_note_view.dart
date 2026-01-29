import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/edit_colors_list_view.dart';
import 'package:notes/widgets/my_app_bar.dart';
import 'package:notes/widgets/my_text_field.dart';

class EditNoteView extends StatelessWidget {
  EditNoteView({super.key, required this.note});
  final NoteModel note;
  final GlobalKey<FormState> myKey = GlobalKey<FormState>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contenetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        text: 'Edit Note',
        icon: Icons.check,
        onPressed: () {
          note.title = titleController.text.isEmpty
              ? note.title
              : titleController.text.trim();
          note.subTitle = contenetController.text.isEmpty
              ? note.subTitle
              : contenetController.text.trim();
          note.save();
          Get.snackbar(
            'Success',
            'Note edited successfully',
            backgroundColor: Colors.green.withOpacity(0.4),
            duration: Duration(seconds: 1),
          );
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: myKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              MyTextField(
                hint: note.title,
                controller: titleController,
                hintColor: Colors.grey,
              ),
              SizedBox(height: 20),
              MyTextField(
                hint: note.subTitle,
                hintColor: Colors.grey,
                controller: contenetController,
                maxLines: 5,
              ),
              SizedBox(height: 20),
              EditColorsListView(note: note),
            ],
          ),
        ),
      ),
    );
  }
}
