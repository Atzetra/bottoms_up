import 'package:bottoms_up/src/common_widgets/header_text.dart';
import 'package:bottoms_up/src/common_widgets/home_appbar.dart';
import 'package:bottoms_up/src/core/exports.dart';
import 'package:bottoms_up/src/features/game_selection/view/game_selection_controller.dart';
import 'package:bottoms_up/src/router/app_routing.dart';
import 'package:bottoms_up/src/theming/thema_data.dart' as theme;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GameSelectionScreen extends StatelessWidget {
  const GameSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeAppBar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderText('SELECT GAME'),
                  const Divider(
                    color: Colors.white,
                  ),
                  GameTypeCard(
                    color: theme.blue,
                    gamePack: GamePack.breakingTheIce,
                  ),
                  GameTypeCard(
                    color: theme.green,
                    gamePack: GamePack.raisingTheStakes,
                  ),
                  GameTypeCard(
                    color: theme.orange,
                    gamePack: GamePack.caliente,
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  HomeButtonFilled(
                    onTap: () {
                      context.goNamed(AppRoute.gameScreen.name);
                    },
                    color: theme.yellow,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.play,
                            size: 40,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'START GAME'.hardcoded,
                            style: GoogleFonts.lexendGiga(
                              textStyle: const TextStyle(
                                  fontSize: 48,
                                  color: Colors.black,
                                  height: 1,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GameTypeCard extends ConsumerWidget {
  final Color color;

  final GamePack gamePack;
  const GameTypeCard({
    super.key,
    required this.color,
    required this.gamePack,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPack = ref.watch(selectedPackProvider);

    return Padding(
      padding: const EdgeInsets.all(4),
      child: GestureDetector(
        onTap: () =>
            ref.read(selectedPackProvider.notifier).changeGame(gamePack),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                gamePack.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Checkbox(
                fillColor: MaterialStateProperty.all(Colors.white),
                value: selectedPack[gamePack],
                onChanged: (_) {
                  // debugPrint('Gamepack changed to $gamePack');
                  ref.read(selectedPackProvider.notifier).changeGame(gamePack);
                  // debugPrint(ref.read(selectedPackProvider).toString());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
