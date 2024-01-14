import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bottoms_up/src/theming/thema_data.dart' as theme;

class HeaderText extends StatelessWidget {
  const HeaderText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lexendGiga(
        textStyle: TextStyle(
            color: theme.yellow,
            fontWeight: FontWeight.bold,
            height: 1,
            fontSize: 27),
      ),
    );
  }
}
