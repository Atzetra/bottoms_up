import 'package:bottoms_up/src/features/game_selection/view/game_selection_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gamecard_data.freezed.dart';
part 'gamecard_data.g.dart';

@freezed
class GameCardData with _$GameCardData {
  const factory GameCardData({
    required CardType cardType,
    required GamePack gamePack,
    required String question,
    String? followUp,
    required bool isDual,
    required int playersRequired,
  }) = _GameCardData;

  factory GameCardData.fromJson(Map<String, dynamic> json) =>
      _$GameCardDataFromJson(json);
}

enum CardType {
  game,
  rule,
  bottomsUp,
  virus,
  caliente,
  punishment,
}
