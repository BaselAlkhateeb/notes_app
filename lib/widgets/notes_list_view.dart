import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
   
    return BlocBuilder<GetNotesCubit, GetNotesState>(
      builder: (context, state) {
         List<NoteModel> notes = BlocProvider.of<GetNotesCubit>(
      context,
    ).getAllNotes();

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            reverse: false,
            physics: BouncingScrollPhysics(),
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return NoteItem(note: notes[index]);
            },
          ),
        );
      },
    );
  }
}
