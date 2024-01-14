import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoSquare extends StatelessWidget {
  const InfoSquare({
    super.key,
    required this.body,
    required this.leading,
    required this.color,
    this.textColor = Colors.white,
  });

  final String body;
  final Widget leading;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Container(
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              leading,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
              ),
              Expanded(
                child: Text(
                  body,
                  style: GoogleFonts.karla(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
