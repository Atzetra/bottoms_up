import 'package:flutter/material.dart';
import 'package:bottoms_up/presentation/home_screen/home_screen.dart';
import 'package:bottoms_up/presentation/one_screen/one_screen.dart';
import 'package:bottoms_up/presentation/add_names_screen/add_names_screen.dart';
import 'package:bottoms_up/presentation/select_deck_screen/select_deck_screen.dart';
import 'package:bottoms_up/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String oneScreen = '/one_screen';

  static const String addNamesScreen = '/add_names_screen';

  static const String selectDeckScreen = '/select_deck_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    oneScreen: (context) => OneScreen(),
    addNamesScreen: (context) => AddNamesScreen(),
    selectDeckScreen: (context) => SelectDeckScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => HomeScreen(),
  };
}
