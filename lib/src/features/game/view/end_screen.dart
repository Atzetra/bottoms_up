import 'package:bottoms_up/src/common_widgets/home_appbar.dart';
import 'package:bottoms_up/src/common_widgets/info_square.dart';
import 'package:bottoms_up/src/router/app_routing.dart';
import 'package:flutter/material.dart';
import 'package:bottoms_up/src/theming/thema_data.dart' as theme;
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class EndScreen extends HookWidget {
  const EndScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
      return null;
    });

    return ColoredScaffold(
      body: GestureDetector(
        onTap: () => context.goNamed(AppRoute.home.name),
        child: Center(
          child: InfoSquare(
            body: 'End of the game :)',
            leading: const Icon(
              Icons.party_mode,
              color: Colors.black,
            ),
            color: theme.yellow,
            textColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
