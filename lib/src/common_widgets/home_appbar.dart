import 'package:bottoms_up/src/core/exports.dart';
import 'package:bottoms_up/src/router/app_routing.dart';
import 'package:flutter/material.dart';
import 'package:bottoms_up/src/theming/thema_data.dart' as theme;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

// SafeArea with container to make sure the statusbar gets colored
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, this.isSettings = false});

  final bool isSettings;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            'bottoms up'.hardcoded,
            style: GoogleFonts.lexendGiga(
              textStyle: TextStyle(
                  color: theme.yellow,
                  fontWeight: FontWeight.bold,
                  height: 0.9,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: FaIcon(
              FontAwesomeIcons.arrowUp,
              color: theme.yellow,
            ),
          ),
          if (!isSettings) ...[
            const Spacer(),
            IconButton(
              onPressed: () => context.pushNamed(AppRoute.settings.name),
              icon: FaIcon(
                FontAwesomeIcons.gear,
                color: theme.yellow,
              ),
              color: theme.blue,
            ),
          ],
        ],
      ),
    );
  }
}

class ColoredScaffold extends StatelessWidget {
  const ColoredScaffold({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: theme.nearlyBlack,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: body,
          backgroundColor: theme.nearlyBlack,
        ),
      ),
    );
  }
}
