import 'package:flutter/material.dart';
import 'package:notes/widgets/floating_action_button.dart';

import 'package:notes/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: NotesListView(),
      floatingActionButton: MyFloatingActionButton(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'Notes',
        style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'poppins'),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(Icons.search, size: 30),
            ),
          ),
        ),
      ],
    );
  }
}
