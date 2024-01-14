import 'package:bottoms_up/src/common_widgets/home_appbar.dart';
import 'package:bottoms_up/src/common_widgets/info_square.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:bottoms_up/src/theming/thema_data.dart' as theme;

class GameSelectionScreen extends ConsumerWidget {
  const GameSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ColoredScaffold(
        body: InfoSquare(
      body: 'Here will be the game selection screen',
      leading: const Icon(
        Icons.info,
        size: 40,
      ),
      color: theme.orange,
    ));
  }
}
