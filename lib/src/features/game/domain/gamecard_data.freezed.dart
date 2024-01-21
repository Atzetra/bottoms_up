// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gamecard_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameCardData _$GameCardDataFromJson(Map<String, dynamic> json) {
  return _GameCardData.fromJson(json);
}

/// @nodoc
mixin _$GameCardData {
  CardType get cardType => throw _privateConstructorUsedError;
  GamePack get gamePack => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String? get followUp => throw _privateConstructorUsedError;
  bool get isDual => throw _privateConstructorUsedError;
  int get playersRequired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameCardDataCopyWith<GameCardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCardDataCopyWith<$Res> {
  factory $GameCardDataCopyWith(
          GameCardData value, $Res Function(GameCardData) then) =
      _$GameCardDataCopyWithImpl<$Res, GameCardData>;
  @useResult
  $Res call(
      {CardType cardType,
      GamePack gamePack,
      String question,
      String? followUp,
      bool isDual,
      int playersRequired});
}

/// @nodoc
class _$GameCardDataCopyWithImpl<$Res, $Val extends GameCardData>
    implements $GameCardDataCopyWith<$Res> {
  _$GameCardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardType = null,
    Object? gamePack = null,
    Object? question = null,
    Object? followUp = freezed,
    Object? isDual = null,
    Object? playersRequired = null,
  }) {
    return _then(_value.copyWith(
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      gamePack: null == gamePack
          ? _value.gamePack
          : gamePack // ignore: cast_nullable_to_non_nullable
              as GamePack,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      followUp: freezed == followUp
          ? _value.followUp
          : followUp // ignore: cast_nullable_to_non_nullable
              as String?,
      isDual: null == isDual
          ? _value.isDual
          : isDual // ignore: cast_nullable_to_non_nullable
              as bool,
      playersRequired: null == playersRequired
          ? _value.playersRequired
          : playersRequired // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameCardDataImplCopyWith<$Res>
    implements $GameCardDataCopyWith<$Res> {
  factory _$$GameCardDataImplCopyWith(
          _$GameCardDataImpl value, $Res Function(_$GameCardDataImpl) then) =
      __$$GameCardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CardType cardType,
      GamePack gamePack,
      String question,
      String? followUp,
      bool isDual,
      int playersRequired});
}

/// @nodoc
class __$$GameCardDataImplCopyWithImpl<$Res>
    extends _$GameCardDataCopyWithImpl<$Res, _$GameCardDataImpl>
    implements _$$GameCardDataImplCopyWith<$Res> {
  __$$GameCardDataImplCopyWithImpl(
      _$GameCardDataImpl _value, $Res Function(_$GameCardDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardType = null,
    Object? gamePack = null,
    Object? question = null,
    Object? followUp = freezed,
    Object? isDual = null,
    Object? playersRequired = null,
  }) {
    return _then(_$GameCardDataImpl(
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      gamePack: null == gamePack
          ? _value.gamePack
          : gamePack // ignore: cast_nullable_to_non_nullable
              as GamePack,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      followUp: freezed == followUp
          ? _value.followUp
          : followUp // ignore: cast_nullable_to_non_nullable
              as String?,
      isDual: null == isDual
          ? _value.isDual
          : isDual // ignore: cast_nullable_to_non_nullable
              as bool,
      playersRequired: null == playersRequired
          ? _value.playersRequired
          : playersRequired // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameCardDataImpl implements _GameCardData {
  const _$GameCardDataImpl(
      {required this.cardType,
      required this.gamePack,
      required this.question,
      this.followUp,
      required this.isDual,
      required this.playersRequired});

  factory _$GameCardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameCardDataImplFromJson(json);

  @override
  final CardType cardType;
  @override
  final GamePack gamePack;
  @override
  final String question;
  @override
  final String? followUp;
  @override
  final bool isDual;
  @override
  final int playersRequired;

  @override
  String toString() {
    return 'GameCardData(cardType: $cardType, gamePack: $gamePack, question: $question, followUp: $followUp, isDual: $isDual, playersRequired: $playersRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameCardDataImpl &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.gamePack, gamePack) ||
                other.gamePack == gamePack) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.followUp, followUp) ||
                other.followUp == followUp) &&
            (identical(other.isDual, isDual) || other.isDual == isDual) &&
            (identical(other.playersRequired, playersRequired) ||
                other.playersRequired == playersRequired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cardType, gamePack, question,
      followUp, isDual, playersRequired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameCardDataImplCopyWith<_$GameCardDataImpl> get copyWith =>
      __$$GameCardDataImplCopyWithImpl<_$GameCardDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameCardDataImplToJson(
      this,
    );
  }
}

abstract class _GameCardData implements GameCardData {
  const factory _GameCardData(
      {required final CardType cardType,
      required final GamePack gamePack,
      required final String question,
      final String? followUp,
      required final bool isDual,
      required final int playersRequired}) = _$GameCardDataImpl;

  factory _GameCardData.fromJson(Map<String, dynamic> json) =
      _$GameCardDataImpl.fromJson;

  @override
  CardType get cardType;
  @override
  GamePack get gamePack;
  @override
  String get question;
  @override
  String? get followUp;
  @override
  bool get isDual;
  @override
  int get playersRequired;
  @override
  @JsonKey(ignore: true)
  _$$GameCardDataImplCopyWith<_$GameCardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
