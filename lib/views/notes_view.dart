import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar());
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
              child: Icon(Icons.search, color: Colors.white, size: 30),
            ),
          ),
        ),
      ],
    );
  }
}
