import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_selection_controller.g.dart';

@riverpod
class SelectedPack extends _$SelectedPack {
  @override
  Map<String, bool> build() {
    return <String, bool>{
      GamePack.breakingTheIce.name: true,
      GamePack.raisingTheStakes.name: false,
      GamePack.caliente.name: false,
    };
  }

  void changeGame(GamePack gamePack) {
    state = <String, bool>{
      GamePack.breakingTheIce.name: gamePack == GamePack.breakingTheIce,
      GamePack.raisingTheStakes.name: gamePack == GamePack.raisingTheStakes,
      GamePack.caliente.name: gamePack == GamePack.caliente,
    };
  }
}

enum GamePack {
  breakingTheIce,
  raisingTheStakes,
  caliente,
}
