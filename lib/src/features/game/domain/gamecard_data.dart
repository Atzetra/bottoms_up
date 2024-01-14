import 'package:bottoms_up/src/features/game/view/game_card.dart';
import 'package:bottoms_up/src/features/game_selection/view/game_selection_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gamecard_data.freezed.dart';

@freezed
class GameCardData with _$GameCardData {
  const factory GameCardData({
    required String id,
    required CardType cardType,
    required GamePack pack,
    required Map<String, TextWeight> question,
    required bool isDual,
    required int playersRequired,
  }) = _GameCardData;
}

enum CardType { game, rule, bottomsUp, virus }
