// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gamecard_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameCardDataImpl _$$GameCardDataImplFromJson(Map<String, dynamic> json) =>
    _$GameCardDataImpl(
      cardType: $enumDecode(_$CardTypeEnumMap, json['cardType']),
      gamePack: $enumDecode(_$GamePackEnumMap, json['gamePack']),
      question: json['question'] as String,
      followUp: json['followUp'] as String?,
      isDual: json['isDual'] as bool,
      playersRequired: json['playersRequired'] as int,
    );

Map<String, dynamic> _$$GameCardDataImplToJson(_$GameCardDataImpl instance) =>
    <String, dynamic>{
      'cardType': _$CardTypeEnumMap[instance.cardType]!,
      'gamePack': _$GamePackEnumMap[instance.gamePack]!,
      'question': instance.question,
      'followUp': instance.followUp,
      'isDual': instance.isDual,
      'playersRequired': instance.playersRequired,
    };

const _$CardTypeEnumMap = {
  CardType.game: 'game',
  CardType.rule: 'rule',
  CardType.bottomsUp: 'bottomsUp',
  CardType.virus: 'virus',
  CardType.caliente: 'caliente',
  CardType.punishment: 'punishment',
};

const _$GamePackEnumMap = {
  GamePack.breakingTheIce: 'breakingTheIce',
  GamePack.raisingTheStakes: 'raisingTheStakes',
  GamePack.caliente: 'caliente',
};
