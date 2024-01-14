import 'package:bottoms_up/src/router/app_routing.dart';
import 'package:bottoms_up/src/theming/thema_data.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bottoms Up',
      routerConfig: goRouter,
      theme: appThemeData,
      themeMode: ThemeMode.dark,
    );
  }
}
