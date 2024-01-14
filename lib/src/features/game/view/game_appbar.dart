import 'package:bottoms_up/src/core/exports.dart';
import 'package:bottoms_up/src/router/app_routing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bottoms_up/src/theming/thema_data.dart' as theme;

class GameAppBar extends StatelessWidget {
  const GameAppBar({super.key});

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
      ),
    );
  }
}
