import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  const GameCard({
    required this.color,
    required this.question,
    required this.icon,
    required this.title,
    super.key,
  });
  final Color color;
  final List<TextSpan> question;
  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    title,
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: question,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                icon,
              ],
            ),
          ],
        ),
      ),
    );
  }
}

enum TextWeight { regular, bold }
