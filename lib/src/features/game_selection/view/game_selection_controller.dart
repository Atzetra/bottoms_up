import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_selection_controller.g.dart';

@riverpod
class SelectedPack extends _$SelectedPack {
  @override
  Map<GamePack, bool> build() {
    ref.onDispose(() {
      debugPrint('disposed');
    });

    return <GamePack, bool>{
      GamePack.breakingTheIce: true,
      GamePack.raisingTheStakes: false,
      GamePack.caliente: false,
    };
  }

  void changeGame(GamePack gamePack) {
    state = <GamePack, bool>{
      GamePack.breakingTheIce: gamePack == GamePack.breakingTheIce,
      GamePack.raisingTheStakes: gamePack == GamePack.raisingTheStakes,
      GamePack.caliente: gamePack == GamePack.caliente,
    };
  }
}

enum GamePack {
  breakingTheIce,
  raisingTheStakes,
  caliente,
}
