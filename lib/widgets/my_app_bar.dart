
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget  implements PreferredSizeWidget{
  const MyAppBar({
    
    super.key, required this.text, required this.icon, this.onPressed
  });
  final String text;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'poppins'),
      ),
      actions: [
        IconButton(
          onPressed: onPressed,
          icon: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(icon, size: 30),
            ),
          ),
        ),
      ],
    );
  }
  

}
