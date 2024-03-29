import 'package:bottoms_up/src/common_widgets/home_appbar.dart';
import 'package:bottoms_up/src/features/game/data/cards_repository.dart';
import 'package:bottoms_up/src/features/game/view/game_appbar.dart';
import 'package:bottoms_up/src/features/game/view/game_screen_controller.dart';
import 'package:bottoms_up/src/router/app_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GameScreen extends HookConsumerWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);

      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
      return null;
    });

    final cards = ref.watch(cardsRetrieverProvider);
    final indexTracker = ref.watch(indexTrackerProvider);

    return ColoredScaffold(
        body: cards.when(
      data: (data) => InkWell(
        onTap: () {
          if (indexTracker > data.length - 2) {
            context.goNamed(AppRoute.endScreen.name);
          } else {
            ref.read(indexTrackerProvider.notifier).increment();
          }
        },
        onLongPress: () {
          if (indexTracker == 0) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Can\'t go back any further'),
              ),
            );
          } else {
            ref.read(indexTrackerProvider.notifier).decrement();
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const GameAppBar(),
            Expanded(child: parseCard(data[indexTracker]))
          ],
        ),
      ),
      error: (error, stackTrace) => Center(
        child: Text(stackTrace.toString()),
      ),
      loading: () => const CircularProgressIndicator.adaptive(),
    ));
  }
}
