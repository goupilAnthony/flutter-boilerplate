import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'darkModeToggle.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(this.toggleTheme, {this.title: "Default", this.darkmode: true});
  final String title;
  final bool darkmode;
  final VoidCallback toggleTheme;
  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Text(
          title,
          style: GoogleFonts.roboto(
            textStyle: AppBarTheme.of(context).titleTextStyle,
          ),
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      titleSpacing: 3,
      centerTitle: false,
      actions: [
        DarkModeToggle(darkmode, toggleTheme),
      ],
    );
  }
}
