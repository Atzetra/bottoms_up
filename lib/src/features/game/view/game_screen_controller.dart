import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_screen_controller.g.dart';

@riverpod
class IndexTracker extends _$IndexTracker {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}
