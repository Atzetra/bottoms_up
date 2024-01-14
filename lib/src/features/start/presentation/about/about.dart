import 'package:bottoms_up/src/common_widgets/home_appbar.dart';
import 'package:bottoms_up/src/common_widgets/info_square.dart';
import 'package:flutter/material.dart';
import 'package:bottoms_up/src/core/exports.dart';
import 'package:bottoms_up/src/theming/thema_data.dart' as theme;

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredScaffold(
      body: Column(
        children: [
          const HomeAppBar(),
          Expanded(
            child: Center(
              child: InfoSquare(
                color: theme.blue,
                leading: const RotatedBox(
                  quarterTurns: 2,
                  child: Text(
                    '?',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 50,
                      height: 1,
                    ),
                  ),
                ),
                body: 'I am not responsible for any harm caused'
                        ' by using this app.\n\nPicolo can suck my'
                        ' dick by using subscriptions while I'
                        ' already paid for the full version.'
                        '\n\nMy own version is better anyways\n\n© '
                        'Enzo Sastrokarijo'
                    .hardcoded,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
