import 'dart:async';

import 'package:bottoms_up/src/common_widgets/header_text.dart';
import 'package:bottoms_up/src/common_widgets/home_appbar.dart';
import 'package:bottoms_up/src/core/exports.dart';
import 'package:bottoms_up/src/features/player_selection/data/player_repository.dart';
import 'package:bottoms_up/src/features/player_selection/domain/player.dart';
import 'package:bottoms_up/src/features/player_selection/view/player_card.dart';
import 'package:bottoms_up/src/router/app_routing.dart';
import 'package:bottoms_up/src/theming/thema_data.dart' as theme;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayerEntry extends HookConsumerWidget {
  const PlayerEntry({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final players = ref.watch(fakePlayerRepositoryProvider);
    final scrollController = useScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 1500),
      );
    });

    return ColoredScaffold(
      body: Column(
        children: [
          const HomeAppBar(),
          Expanded(
            child: LayoutBuilder(builder: (context, constraint) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeaderText('ENTER PLAYERS'),
                        // horizontal line
                        const Divider(
                          color: Colors.white,
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.32,
                          child: Scrollbar(
                            child: ListView.builder(
                              controller: scrollController,
                              shrinkWrap: true,
                              itemCount: players.length,
                              itemBuilder: (context, index) {
                                return buildPlayerList(players, index);
                              },
                            ),
                          ),
                        ),
                        const Divider(
                          color: Colors.white,
                        ),
                        EntryField(
                          scrollController: scrollController,
                        ),
                        HomeButtonFilled(
                          onTap: () {
                            if (players.length < 2) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  dismissDirection: DismissDirection.up,
                                  content: Text(
                                    'You need at least 2 players',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20,
                                    ),
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                              );
                              return;
                            }
                            context.pushNamed(AppRoute.gameSelection.name);
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
                                  'PLAY'.hardcoded,
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
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

Widget buildPlayerList(List<Player> players, int index) {
  final colorChoise = index % 4;

  switch (colorChoise) {
    case 0:
      return PlayerCard(color: theme.blue, player: players[index]);
    case 1:
      return PlayerCard(color: theme.yellow, player: players[index]);

    case 2:
      return PlayerCard(color: theme.orange, player: players[index]);

    case 3:
      return PlayerCard(color: theme.green, player: players[index]);
    default:
      return PlayerCard(color: theme.blue, player: players[index]);
  }
}

class EntryField extends HookConsumerWidget {
  const EntryField({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  textCapitalization: TextCapitalization.words,
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: 'Add a player',
                    hintStyle: GoogleFonts.karla(
                      textStyle: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    border: InputBorder.none,
                    errorStyle: GoogleFonts.karla(
                      textStyle: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  style: GoogleFonts.karla(
                    textStyle: TextStyle(
                        color: theme.nearlyBlack,
                        fontWeight: FontWeight.w800,
                        fontSize: 25,
                        height: 1),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: () {
                  if (controller.text.isNotEmpty) {
                    ref.read(fakePlayerRepositoryProvider.notifier).addPlayer(
                          controller.text,
                        );
                    controller.clear();
                    scrollController.animateTo(
                      scrollController.position.maxScrollExtent,
                      curve: Curves.easeInOut,
                      duration: const Duration(milliseconds: 100),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'You need to enter a name',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                child: Icon(
                  Icons.add,
                  color: theme.blue,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
