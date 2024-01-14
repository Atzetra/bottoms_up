import 'package:bottoms_up/src/features/game/domain/gamecard_data.dart';
import 'package:bottoms_up/src/features/game/view/game_card.dart';
import 'package:bottoms_up/src/features/game_selection/view/game_selection_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kTestCards = [
  GameCardData(
    id: '1',
    cardType: CardType.rule,
    pack: GamePack.caliente,
    question: {
      'Drink 5 times ': TextWeight.bold,
      'if you have a condom on you.': TextWeight.regular,
    },
    isDual: false,
    playersRequired: 2,
  ),
  GameCardData(
    id: '2',
    cardType: CardType.game,
    pack: GamePack.raisingTheStakes,
    question: {
      'Voting time! Who is the worst cook? Loser ': TextWeight.regular,
      'drinks 2 times.': TextWeight.bold,
    },
    isDual: false,
    playersRequired: 2,
  ),
  GameCardData(
    id: '3',
    pack: GamePack.breakingTheIce,
    cardType: CardType.virus,
    question: {
      'Enzo': TextWeight.bold,
      ' and ': TextWeight.regular,
      'Iris': TextWeight.bold,
      ' are inseparable. Hook arms into each other until further notice. ':
          TextWeight.regular,
    },
    isDual: false,
    playersRequired: 2,
  ),
  GameCardData(
    id: '4',
    pack: GamePack.raisingTheStakes,
    cardType: CardType.bottomsUp,
    question: {
      'Iris': TextWeight.bold,
      ', finish your drink while everyone calls you slurs.': TextWeight.regular,
    },
    isDual: false,
    playersRequired: 2,
  ),
];
