import 'package:bottoms_up/src/common_widgets/home_appbar.dart';
import 'package:bottoms_up/src/core/exports.dart';
import 'package:bottoms_up/src/router/app_routing.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:bottoms_up/src/theming/thema_data.dart' as theme;

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
      return null;
    });
    return ColoredScaffold(
      body: Column(
        children: [
          const HomeAppBar(isSettings: true),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: StaggeredGrid.count(
                  crossAxisCount: 5,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: HomeButtonOutlined(
                        onTap: () => context.goNamed(AppRoute.about.name),
                        color: theme.blue,
                        child: RotatedBox(
                          quarterTurns: 2,
                          child: Text(
                            '?'.hardcoded,
                            style: TextStyle(
                              // fontFamily: 'NATS',
                              color: theme.blue,
                              fontWeight: FontWeight.w700,
                              height: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 3,
                      mainAxisCellCount: 3,
                      child: HomeButtonFilled(
                        onTap: () =>
                            context.pushNamed(AppRoute.playerSelection.name),
                        color: theme.yellow,
                        child: Text(
                          'PL\nAY'.hardcoded,
                          style: GoogleFonts.lexendGiga(
                            textStyle: TextStyle(
                                color: theme.nearlyBlack,
                                fontWeight: FontWeight.w900,
                                height: 0.9),
                          ),
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1,
                      child: HomeButtonOutlined(
                        onTap: () => context.pushNamed(AppRoute.settings.name),
                        color: Colors.white,
                        child: const FaIcon(
                          FontAwesomeIcons.gear,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 5,
                      mainAxisCellCount: 1,
                      child: HomeButtonOutlined(
                        onTap: () => context.goNamed(AppRoute.sketchpad.name),
                        color: theme.green,
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.solidEnvelope,
                              color: theme.green,
                              size: 15,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'SUGGESTIONS'.hardcoded,
                              style: GoogleFonts.lexendGiga(
                                textStyle: TextStyle(
                                  color: theme.green,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
