import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/constants/colors.dart';
import 'package:notes/cubits/cubit/add_note_cubit.dart';
import 'package:notes/widgets/note_buttom_sheet.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return BlocProvider(
              create: (context) => AddNoteCubit(),
              child: MyNoteButtomSheet(),
            );
          },
        );
      },
      backgroundColor: kPrimaryColor,
      shape: CircleBorder(),
      child: Icon(Icons.add, color: Colors.black),
    );
  }
}
