import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';
import 'package:notes/models/note_model.dart';

class EditColorsListView extends StatefulWidget {
  const EditColorsListView({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditColorsListView> createState() => _EditColorsListViewState();
}

class _EditColorsListViewState extends State<EditColorsListView> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kcolors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kcolors[currentIndex].value;
                setState(() {});
              },

              child: (currentIndex == index)
                  ? CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: kcolors[index],
                      ),
                    )
                  : CircleAvatar(radius: 32, backgroundColor: kcolors[index]),
            ),
          );
        },
      ),
    );
  }
}
