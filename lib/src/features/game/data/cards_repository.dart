import 'dart:math';

import 'package:intl/intl.dart' show toBeginningOfSentenceCase;
import 'package:bottoms_up/src/features/game/data/card_service.dart';
import 'package:bottoms_up/src/features/game/domain/gamecard_data.dart';
import 'package:bottoms_up/src/features/game/view/game_card.dart';
import 'package:bottoms_up/src/features/game_selection/view/game_selection_controller.dart';
import 'package:bottoms_up/src/features/player_selection/data/player_repository.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:bottoms_up/src/theming/thema_data.dart' as theme;

part 'cards_repository.g.dart';

@riverpod
class CardsRetriever extends _$CardsRetriever {
  @override
  Future<List<GameCardData>> build() async {
    final selectedPack = ref.read(selectedPackProvider).keys.firstWhere(
        (element) => ref.read(selectedPackProvider)[element] == true);

    final cards = await ref.read(cardServiceProvider).getCards(selectedPack);

    if (cards.isEmpty) {
      throw Exception('No cards found!');
    }

    final correctPlayerCountCards = cards
        .where(
          (element) =>
              element.playersRequired <=
              ref.read(playerRepositoryProvider).length,
        )
        .toList();

    final populatedCards = populateDeck(correctPlayerCountCards, selectedPack);

    return populatedCards;
  }

  List<GameCardData> populateDeck(List<GameCardData> cards, GamePack pack) {
    const deckSize = 46;
    var deck = <GameCardData>[];

    deck += cards
        .where((element) => element.cardType == CardType.game)
        .toList()
        .sample((deckSize * 0.2).toInt());

    deck += cards
        .where((element) => element.cardType == CardType.rule)
        .toList()
        .sample((deckSize * 0.5).toInt());

    if (pack == GamePack.caliente) {
      deck += cards
          .where((element) => element.cardType == CardType.caliente)
          .toList()
          .sample(
            (2).toInt(),
          );
      deck += cards
          .where((element) => element.cardType == CardType.bottomsUp)
          .toList()
          .sample(
            (deckSize * 0.1).toInt(),
          );
    } else {
      deck += cards
          .where((element) => element.cardType == CardType.bottomsUp)
          .toList()
          .sample(
            (deckSize * 0.2).toInt(),
          );
    }

    final virusCards = cards
        .where((element) => element.cardType == CardType.virus)
        .toList()
        .sample((3));

    deck.shuffle();
    deck = splitVirus(virusCards, deck, CardType.virus);
    // deck = splitDual(deck);
    deck = populatePlayers(deck);
    deck = sipParser(deck);

    return deck;
  }

  List<GameCardData> splitDual(List<GameCardData> deck) {
    final tempDeck = [...deck];
    for (final (index, card) in deck.indexed) {
      if (!card.isDual) {
        continue;
      }
      final secondCard = card.copyWith(
        isDual: false,
        question: card.followUp!,
        followUp: null,
      );

      tempDeck.insert(index + 1, secondCard);
    }

    return tempDeck;
  }

  List<GameCardData> splitVirus(List<GameCardData> virusCards,
      List<GameCardData> deck, CardType cardType) {
    final tempDeck = [...deck];
    for (final virusCard in virusCards) {
      final random = Random();
      final firstInsertIndex = random.nextInt(deck.length);
      int secondInsertIndex;

      secondInsertIndex =
          firstInsertIndex + 1 + random.nextInt(deck.length - firstInsertIndex);

      final firstCard = virusCard.copyWith(
        isDual: false,
        question: virusCard.question,
        followUp: null,
      );

      final secondCard = virusCard.copyWith(
        isDual: false,
        question: virusCard.followUp!,
        followUp: null,
      );

      tempDeck
        ..insert(firstInsertIndex, firstCard)
        ..insert(secondInsertIndex, secondCard);
    }

    return tempDeck;
  }

  List<GameCardData> sipParser(List<GameCardData> cards) {
    final List<GameCardData> sippedDeck = [];
    for (final card in cards) {
      final question = card.question;
      final followUp = card.followUp;

      final newQuestion = toBeginningOfSentenceCase(sipDecider(question));
      if (followUp == null) {
        sippedDeck.add(card.copyWith(question: newQuestion));
        continue;
      }
      final newFollowUp = toBeginningOfSentenceCase(sipDecider(followUp));
      sippedDeck
          .add(card.copyWith(question: newQuestion, followUp: newFollowUp));
    }

    final List<GameCardData> completedDeck = [];
    for (final card in sippedDeck) {
      final question = card.question;
      final followUp = card.followUp;

      final newQuestion = insertSips(question);
      if (followUp == null) {
        completedDeck.add(card.copyWith(question: newQuestion));
        continue;
      }
      final newFollowUp = insertSips(followUp);
      completedDeck
          .add(card.copyWith(question: newQuestion, followUp: newFollowUp));
    }
    return completedDeck;
  }

  String insertSips(String question) {
    final placeholderRegex = RegExp(r"\{\[(.*?)\]\}");
    final placeholderMatches = placeholderRegex.allMatches(question).toList();

    var newQuestion = question;

    for (final match in placeholderMatches) {
      final placeholderText = match.group(0)!;
      final sips = Random().nextInt(5) + 1;

      final sipWord = sips > 1 ? 'sips' : 'sip';

      final endIndex = match.end;
      final nextChar = endIndex < question.length ? question[endIndex] : null;
      final spaceNeeded = nextChar != null && nextChar != ' ' ? ' ' : '';

      newQuestion =
          question.replaceFirst(placeholderText, '$sips $sipWord$spaceNeeded');
    }

    return newQuestion;
  }

  String sipDecider(String question) {
    final placeholderRegex = RegExp(r"{{drink}}");
    final placeholderMatches = placeholderRegex.allMatches(question).toList();

    final drinkOptions = ['give out {[0]}', 'drink {[0]}'];

    var newQuestion = question;

    for (final match in placeholderMatches) {
      final placeholderText = match.group(0)!;
      final giveOrTake = Random().nextInt(2);

      newQuestion = question.replaceFirst(
        placeholderText,
        drinkOptions[giveOrTake],
      );
    }

    return newQuestion;
  }

  List<GameCardData> populatePlayers(List<GameCardData> cards) {
    final players = ref.read(playerRepositoryProvider);

    final playerNames = players.map((e) => e.name).toList();

    final populatedCards = cards.map((card) {
      final question = card.question;
      final followUp = card.followUp;
      final players = playerNames.sample(card.playersRequired);

      final newQuestion = namePlayers(question, players);
      if (followUp == null) {
        return card.copyWith(question: newQuestion);
      }
      final newFollowUp = namePlayers(followUp, players);
      return card.copyWith(question: newQuestion, followUp: newFollowUp);
    }).toList();

    return populatedCards;
  }

  String namePlayers(String question, List<String> players) {
    final placeholderRegex = RegExp(r"{{(.*?)}}");
    final placeholderMatches = placeholderRegex.allMatches(question).toList();

    var newQuestion = question;

    for (final match in placeholderMatches) {
      final placeholderText = match.group(0)!;
      if (placeholderText == '{{drink}}') {
        continue;
      }

      final player = players.removeAt(0);
      newQuestion = newQuestion.replaceFirst(placeholderText, '{{$player}}');
    }

    return newQuestion;
  }
}

GameCard parseCard(GameCardData cardData) {
  final color = parsePack(
    cardData.cardType,
  );

  final icon = parseGameType(
    cardData.gamePack,
    color,
  );

  final title = Text(
    cardData.cardType.name.toUpperCase(),
    style: GoogleFonts.lexendGiga(
      textStyle: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    ),
  );

  final question = formatTextWithBoldPlaceholders(
    cardData.question,
  );

  return GameCard(
    color: color,
    icon: icon,
    title: title,
    question: question,
  );
}

TextSpan formatTextWithBoldPlaceholders(String text) {
  final placeholderRegex = RegExp(r"{{(.*?)}}");
  final placeholderMatches = placeholderRegex.allMatches(text).toList();

  List<TextSpan> spans = [];
  int lastMatchEnd = 0;

  for (final match in placeholderMatches) {
    final placeholderText = match.group(0)!;

    //remove the curly braces
    final placeholder =
        placeholderText.substring(2, placeholderText.length - 2);

    // Add the normal text before the placeholder
    if (match.start > lastMatchEnd) {
      spans.add(TextSpan(
        text: text.substring(lastMatchEnd, match.start),
        style: GoogleFonts.karla(
          textStyle: const TextStyle(
            fontSize: 35,
          ),
        ),
      ));
    }

    // Add the placeholder text
    spans.add(
      TextSpan(
        text: placeholder,
        style: GoogleFonts.karla(
          textStyle: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    lastMatchEnd = match.end;
  }

  // Add any remaining normal text after the last placeholder
  if (lastMatchEnd < text.length) {
    spans.add(TextSpan(
      text: text.substring(lastMatchEnd),
      style: GoogleFonts.karla(
        textStyle: const TextStyle(
          fontSize: 35,
        ),
      ),
    ));
  }

  return TextSpan(children: spans);
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
    case CardType.caliente:
      return Colors.pink;
    case CardType.punishment:
      return Colors.deepOrange;
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
