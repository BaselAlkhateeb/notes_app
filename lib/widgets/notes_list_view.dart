import 'package:flutter/material.dart';
import 'package:notes/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return NoteItem();
        },
      ),
    );
  }
}
