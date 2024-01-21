import 'package:bottoms_up/src/core/env/env.dart';
import 'package:bottoms_up/src/features/game/domain/gamecard_data.dart';
import 'package:bottoms_up/src/features/game_selection/view/game_selection_controller.dart';
import 'package:flutter/material.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'card_service.g.dart';

class CardService {
  final pb = PocketBase(Env.pocketbaseEndpoint);

  Future<List<GameCardData>> getCards(GamePack pack) async {
    final documents = await pb.collection('cards').getFullList(
          filter: 'gamePack = "${pack.name}"',
        );

    debugPrint(documents.toString());

    return documents.map((e) => GameCardData.fromJson(e.data)).toList();
  }
}

@riverpod
CardService cardService(CardServiceRef ref) {
  return CardService();
}
