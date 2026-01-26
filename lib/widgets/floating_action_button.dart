
import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: const Color.fromARGB(255, 18, 193, 175),
      shape: CircleBorder(),
      child: Icon(Icons.add, color: Colors.black),
    );
  }
}
