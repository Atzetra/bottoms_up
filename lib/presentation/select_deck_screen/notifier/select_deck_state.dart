// ignore_for_file: must_be_immutable

part of 'select_deck_notifier.dart';

/// Represents the state of SelectDeck in the application.
class SelectDeckState extends Equatable {
  SelectDeckState({this.selectDeckModelObj});

  SelectDeckModel? selectDeckModelObj;

  @override
  List<Object?> get props => [
        selectDeckModelObj,
      ];

  SelectDeckState copyWith({SelectDeckModel? selectDeckModelObj}) {
    return SelectDeckState(
      selectDeckModelObj: selectDeckModelObj ?? this.selectDeckModelObj,
    );
  }
}
