import 'package:flutter/material.dart';
import 'package:notes/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => EditNoteView()),
          );
        },
        child: Container(
          padding: EdgeInsets.only(top: 24, bottom: 24, left: 24, right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),

            color: Color(0xffFFCC80),
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(
                  'Flutter Tips',
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'Build your career with basel alkhateeb',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 18,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.black, size: 40),
                ),

                contentPadding: EdgeInsets.all(0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'May 21,2022',
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
