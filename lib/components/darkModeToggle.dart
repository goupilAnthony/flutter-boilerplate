import 'package:flutter/material.dart';

class DarkModeToggle extends StatelessWidget {
  final bool darkmode;
  final VoidCallback toggleDarkMode;
  DarkModeToggle(this.darkmode, this.toggleDarkMode);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: toggleDarkMode, icon: Icon(Icons.brightness_6));
  }
}
