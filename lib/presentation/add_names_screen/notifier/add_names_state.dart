// ignore_for_file: must_be_immutable

part of 'add_names_notifier.dart';

/// Represents the state of AddNames in the application.
class AddNamesState extends Equatable {
  AddNamesState({this.addNamesModelObj});

  AddNamesModel? addNamesModelObj;

  @override
  List<Object?> get props => [
        addNamesModelObj,
      ];

  AddNamesState copyWith({AddNamesModel? addNamesModelObj}) {
    return AddNamesState(
      addNamesModelObj: addNamesModelObj ?? this.addNamesModelObj,
    );
  }
}
