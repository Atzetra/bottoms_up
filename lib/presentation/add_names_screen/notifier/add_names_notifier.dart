import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:enzo_sastrokarijo_s_application/presentation/add_names_screen/models/add_names_model.dart';
part 'add_names_state.dart';

final addNamesNotifier = StateNotifierProvider<AddNamesNotifier, AddNamesState>(
    (ref) =>
        AddNamesNotifier(AddNamesState(addNamesModelObj: AddNamesModel())));

/// A notifier that manages the state of a AddNames according to the event that is dispatched to it.
class AddNamesNotifier extends StateNotifier<AddNamesState> {
  AddNamesNotifier(AddNamesState state) : super(state);
}
