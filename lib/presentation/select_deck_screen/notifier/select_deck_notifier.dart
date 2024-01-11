import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bottoms_up/presentation/select_deck_screen/models/select_deck_model.dart';
part 'select_deck_state.dart';

final selectDeckNotifier =
    StateNotifierProvider<SelectDeckNotifier, SelectDeckState>((ref) =>
        SelectDeckNotifier(
            SelectDeckState(selectDeckModelObj: SelectDeckModel())));

/// A notifier that manages the state of a SelectDeck according to the event that is dispatched to it.
class SelectDeckNotifier extends StateNotifier<SelectDeckState> {
  SelectDeckNotifier(SelectDeckState state) : super(state);
}
