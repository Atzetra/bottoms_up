import 'package:bottoms_up/src/common_widgets/home_appbar.dart';
import 'package:bottoms_up/src/common_widgets/info_square.dart';
import 'package:flutter/material.dart';
import 'package:bottoms_up/src/theming/thema_data.dart' as theme;

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredScaffold(
        body: Column(
      children: [
        const HomeAppBar(isSettings: true),
        Expanded(
            child: Center(
          child: InfoSquare(
              textColor: theme.nearlyBlack,
              color: Colors.white,
              body: 'Here is where the setting page will be.',
              leading: Icon(
                Icons.settings,
                color: theme.nearlyBlack,
                size: 40,
              )),
        ))
      ],
    ));
  }
}
