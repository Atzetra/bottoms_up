import 'package:bottoms_up/src/features/game_selection/view/game_selection.dart';
import 'package:bottoms_up/src/features/player_selection/view/player_entry.dart';
import 'package:bottoms_up/src/features/start/presentation/settings/settings.dart';
import 'package:bottoms_up/src/features/start/presentation/about/about.dart';
import 'package:bottoms_up/src/features/start/presentation/homescreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  settings,
  about,
  playerSelection,
  gameSelection,
}

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'settings',
          name: AppRoute.settings.name,
          pageBuilder: (context, state) => MaterialPage<void>(
            key: state.pageKey,
            child: const SettingsPage(),
          ),
        ),
        GoRoute(
          name: AppRoute.about.name,
          path: 'about',
          pageBuilder: (context, state) => const MaterialPage(
            child: AboutScreen(),
          ),
        ),
        GoRoute(
          path: 'playerSelection',
          name: AppRoute.playerSelection.name,
          pageBuilder: (context, state) => MaterialPage<void>(
            key: state.pageKey,
            child: const PlayerEntry(),
          ),
        ),
        GoRoute(
          path: 'gameSelection',
          name: AppRoute.gameSelection.name,
          builder: (context, state) => const GameSelectionScreen(),
        )
      ],
    ),
  ],
);
