import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:notes/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => EditNoteView(note: note,)),
          );
        },
        child: Container(
          padding: EdgeInsets.only(top: 24, bottom: 24, left: 24, right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),

            color: Color(note.color),
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    note.subTitle,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 18,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<GetNotesCubit>(context).getAllNotes();
                    Get.snackbar(
                      'success',
                      'Note is deleted',
                      duration: Duration(seconds: 1),
                    );
                  },
                  icon: Icon(Icons.delete, color: Colors.black, size: 40),
                ),

                contentPadding: EdgeInsets.all(0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    note.date,
                    style: TextStyle(color: Colors.black.withOpacity(0.4)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
