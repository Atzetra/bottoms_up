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

/// @nodoc
mixin _$GameCardData {
  String get id => throw _privateConstructorUsedError;
  CardType get cardType => throw _privateConstructorUsedError;
  GamePack get pack => throw _privateConstructorUsedError;
  Map<String, TextWeight> get question => throw _privateConstructorUsedError;
  bool get isDual => throw _privateConstructorUsedError;
  int get playersRequired => throw _privateConstructorUsedError;

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
      {String id,
      CardType cardType,
      GamePack pack,
      Map<String, TextWeight> question,
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
    Object? id = null,
    Object? cardType = null,
    Object? pack = null,
    Object? question = null,
    Object? isDual = null,
    Object? playersRequired = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      pack: null == pack
          ? _value.pack
          : pack // ignore: cast_nullable_to_non_nullable
              as GamePack,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Map<String, TextWeight>,
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
      {String id,
      CardType cardType,
      GamePack pack,
      Map<String, TextWeight> question,
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
    Object? id = null,
    Object? cardType = null,
    Object? pack = null,
    Object? question = null,
    Object? isDual = null,
    Object? playersRequired = null,
  }) {
    return _then(_$GameCardDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      pack: null == pack
          ? _value.pack
          : pack // ignore: cast_nullable_to_non_nullable
              as GamePack,
      question: null == question
          ? _value._question
          : question // ignore: cast_nullable_to_non_nullable
              as Map<String, TextWeight>,
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

class _$GameCardDataImpl implements _GameCardData {
  const _$GameCardDataImpl(
      {required this.id,
      required this.cardType,
      required this.pack,
      required final Map<String, TextWeight> question,
      required this.isDual,
      required this.playersRequired})
      : _question = question;

  @override
  final String id;
  @override
  final CardType cardType;
  @override
  final GamePack pack;
  final Map<String, TextWeight> _question;
  @override
  Map<String, TextWeight> get question {
    if (_question is EqualUnmodifiableMapView) return _question;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_question);
  }

  @override
  final bool isDual;
  @override
  final int playersRequired;

  @override
  String toString() {
    return 'GameCardData(id: $id, cardType: $cardType, pack: $pack, question: $question, isDual: $isDual, playersRequired: $playersRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameCardDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.pack, pack) || other.pack == pack) &&
            const DeepCollectionEquality().equals(other._question, _question) &&
            (identical(other.isDual, isDual) || other.isDual == isDual) &&
            (identical(other.playersRequired, playersRequired) ||
                other.playersRequired == playersRequired));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, cardType, pack,
      const DeepCollectionEquality().hash(_question), isDual, playersRequired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameCardDataImplCopyWith<_$GameCardDataImpl> get copyWith =>
      __$$GameCardDataImplCopyWithImpl<_$GameCardDataImpl>(this, _$identity);
}

abstract class _GameCardData implements GameCardData {
  const factory _GameCardData(
      {required final String id,
      required final CardType cardType,
      required final GamePack pack,
      required final Map<String, TextWeight> question,
      required final bool isDual,
      required final int playersRequired}) = _$GameCardDataImpl;

  @override
  String get id;
  @override
  CardType get cardType;
  @override
  GamePack get pack;
  @override
  Map<String, TextWeight> get question;
  @override
  bool get isDual;
  @override
  int get playersRequired;
  @override
  @JsonKey(ignore: true)
  _$$GameCardDataImplCopyWith<_$GameCardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
