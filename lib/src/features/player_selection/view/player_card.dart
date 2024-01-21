import 'package:bottoms_up/src/features/player_selection/data/player_repository.dart';
import 'package:bottoms_up/src/features/player_selection/domain/player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayerCard extends ConsumerWidget {
  const PlayerCard({
    required this.color,
    required this.player,
    super.key,
  });

  final Color color;
  final Player player;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Wrap(
        children: [
          Container(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width * 0.2,
            ),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: color,
                  width: 5,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    player.name,
                    style: GoogleFonts.karla(
                      textStyle: TextStyle(
                        color: color,
                        fontWeight: FontWeight.w800,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      ref
                          .read(playerRepositoryProvider.notifier)
                          .removePlayer(player);
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
