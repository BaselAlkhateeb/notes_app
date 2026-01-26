import 'package:flutter/material.dart';
import 'package:notes/widgets/floating_action_button.dart';
import 'package:notes/widgets/my_app_bar.dart';

import 'package:notes/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(text: 'Notes', icon: Icons.search,),
      body: NotesListView(),
      floatingActionButton: MyFloatingActionButton(),
    );
  }

 
}

