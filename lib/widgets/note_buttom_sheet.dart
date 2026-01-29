import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:notes/cubits/cubit/add_note_cubit.dart';
import 'package:notes/models/note_model.dart';
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
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSuccess) {
          Navigator.pop(context);
          Get.snackbar(
            'success',
            'note added successfully',
            backgroundColor: Colors.green.withOpacity(0.4),
          );
        }

        if (state is AddNoteFailure) {
          Get.snackbar(
            'Failed',
            'failed to add note',
            backgroundColor: Colors.red.withOpacity(0.4),
          );
        }
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(
            top: 32.0,
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom+10,
          ),
          child: SingleChildScrollView(
            child: AbsorbPointer(
              absorbing: state is AddNoteLoading,
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
                      isLoading: state is AddNoteLoading,
                      onPressed: () {
                        if (myKey.currentState!.validate()) {
                          myKey.currentState!.save();
                          NoteModel note = NoteModel(
                            title: title!,
                            subTitle: subTitle!,
                            date: DateFormat(
                              'dd/MM/yyyy',
                            ).format(DateTime.now()),
                            color: Colors.blue.value,
                          );
                          context.read<AddNoteCubit>().addNote(note);
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
          ),
        );
      },
    );
  }
}
