import 'package:bottoms_up/src/core/exports.dart';
import 'package:bottoms_up/src/features/player_selection/domain/player.dart';
import 'package:bottoms_up/src/features/player_selection/domain/test_players.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'player_repository.g.dart';

@riverpod
class PlayerRepository extends _$PlayerRepository {
  @override
  List<Player> build() => kEnzoEnIris;

  void addPlayer(String name) {
    const uuid = Uuid();
    final Player player = Player(name: name.capitalize(), id: uuid.v4());
    state = [...state, player];
  }

  void clearPlayers() {
    state = <Player>[];
  }

  void removePlayer(Player player) {
    state = state.where((element) => element != player).toList();
  }

  void updatePlayer(Player player) {
    final index = state.indexWhere((element) => element.id == player.id);
    state = List<Player>.from(state)..[index];
  }
}
