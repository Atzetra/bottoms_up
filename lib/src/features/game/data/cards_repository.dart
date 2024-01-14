import 'package:bottoms_up/src/core/exports.dart';
import 'package:bottoms_up/src/features/game/domain/gamecard_data.dart';
import 'package:bottoms_up/src/features/game/domain/k_testcards.dart';
import 'package:bottoms_up/src/features/game/view/game_card.dart';
import 'package:bottoms_up/src/features/game_selection/view/game_selection_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:bottoms_up/src/theming/thema_data.dart' as theme;

part 'cards_repository.g.dart';

abstract class CardsRepository {
  Future<List<GameCardData>> getCards(GamePack pack);
  Future<List<GameCardData>> shuffleCards();
  Future<List<GameCardData>> addPlayers();
  Future<List<GameCardData>> determinePunishment();
  GameCard parseCard(GameCardData cardData);
}

@riverpod
List<GameCardData> currentCards(CurrentCardsRef ref) {
  return kTestCards;
}

@riverpod
class GameCardPool extends _$GameCardPool {
  @override
  List<GameCard> build() {
    final cards = ref.watch(currentCardsProvider);
    for (final card in cards) {
      final gameCard = parseCard(card);
      state.add(gameCard);
    }
    return state;
  }
}

GameCard parseCard(GameCardData cardData) {
  final color = parsePack(
    cardData.cardType,
  );

  final icon = parseGameType(
    cardData.pack,
    color,
  );

  final title = Text(
    cardData.cardType.toString().split('.').last.toUpperCase(),
    style: GoogleFonts.lexendGiga(
      textStyle: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    ),
  );

  final question = buildTextSpan(
    cardData.question,
  );

  return GameCard(
    color: color,
    icon: icon,
    title: title,
    question: question,
  );
}

TextStyle getTextStyle(TextWeight textWeight) {
  switch (textWeight) {
    case TextWeight.regular:
      return GoogleFonts.karla(
        textStyle: const TextStyle(
          fontSize: 40,
        ),
      );
    case TextWeight.bold:
      return GoogleFonts.karla(
        textStyle: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      );
    default:
      return GoogleFonts.karla(
        textStyle: const TextStyle(
          fontSize: 40,
        ),
      );
  }
}

List<TextSpan> buildTextSpan(Map<String, TextWeight> question) {
  var children = <TextSpan>[];

  for (final entry in question.entries) {
    children.add(
      TextSpan(
        text: entry.key,
        style: getTextStyle(entry.value),
      ),
    );
  }

  return children;
}

Color parsePack(CardType type) {
  switch (type) {
    case CardType.rule:
      return theme.blue;
    case CardType.game:
      return Colors.green;
    case CardType.bottomsUp:
      return Colors.yellow;
    case CardType.virus:
      return theme.orange;
  }
}

Widget parseGameType(GamePack pack, Color color) {
  switch (pack) {
    case GamePack.breakingTheIce:
      return FaIcon(
        FontAwesomeIcons.snowflake,
        color: color,
        size: 60,
      );
    case GamePack.raisingTheStakes:
      return FaIcon(
        FontAwesomeIcons.circleUp,
        color: color,
        size: 60,
      );
    case GamePack.caliente:
      return FaIcon(
        FontAwesomeIcons.pepperHot,
        color: color,
        size: 60,
      );
  }
}
