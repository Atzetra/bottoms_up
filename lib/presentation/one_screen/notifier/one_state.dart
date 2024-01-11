// ignore_for_file: must_be_immutable

part of 'one_notifier.dart';

/// Represents the state of One in the application.
class OneState extends Equatable {
  OneState({this.oneModelObj});

  OneModel? oneModelObj;

  @override
  List<Object?> get props => [
        oneModelObj,
      ];

  OneState copyWith({OneModel? oneModelObj}) {
    return OneState(
      oneModelObj: oneModelObj ?? this.oneModelObj,
    );
  }
}
