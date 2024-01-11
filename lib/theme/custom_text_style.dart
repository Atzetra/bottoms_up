import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displayMediumSecondaryContainer =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  // Headline text style
  static get headlineMediumBlack900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.black900,
      );
  static get headlineMediumLexendGigaSecondaryContainer =>
      theme.textTheme.headlineMedium!.lexendGiga.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumOnError => theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get headlineMediumSecondaryContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.52),
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Lexend text style
  static get lexendGigaOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: 80.fSize,
        fontWeight: FontWeight.w800,
      ).lexendGiga;
  // N text style
  static get nATSOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: 80.fSize,
        fontWeight: FontWeight.w400,
      ).nATS;
  static get nATSPrimaryContainer => TextStyle(
        color: theme.colorScheme.primaryContainer,
        fontSize: 130.fSize,
        fontWeight: FontWeight.w400,
      ).nATS;
  // Title text style
  static get titleLargeKarlaOnPrimaryContainer =>
      theme.textTheme.titleLarge!.karla.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 23.fSize,
      );
}

extension on TextStyle {
  TextStyle get karla {
    return copyWith(
      fontFamily: 'Karla',
    );
  }

  TextStyle get nATS {
    return copyWith(
      fontFamily: 'NATS',
    );
  }

  TextStyle get lexendGiga {
    return copyWith(
      fontFamily: 'Lexend Giga',
    );
  }
}
