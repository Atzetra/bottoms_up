import 'package:appwrite/appwrite.dart';
import 'package:bottoms_up/src/core/env/env.dart';
import 'package:bottoms_up/src/features/game_selection/view/game_selection_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'card_service.g.dart';

class CardService {
  final Databases database = Databases(Client()
      .setEndpoint(Env.appwriteEndpoint)
      .setProject(Env.appwriteProject));

  Future<List<dynamic>> getCards(GamePack pack) async {
    try {
      final documents = await database.listDocuments(
          collectionId: Env.collectionId,
          databaseId: Env.databaseId,
          queries: [Query.equal('pack', pack.name)]);

      return documents.documents;
    } on AppwriteException catch (e) {
      debugPrint(e.message);
      throw Exception(e.message);
    }
  }
}

@riverpod
CardService cardService(CardServiceRef ref) {
  return CardService();
}
