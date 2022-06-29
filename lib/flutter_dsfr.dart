library flutter_dsfr;

import 'package:flutter/material.dart';

import 'src/theme/colors.dart';
import 'src/theme/sizes.dart';
import 'src/theme/typography.dart';
import 'src/theme_extensions/dsfr_button_style.dart';

export 'src/components/buttons/dsfr_primary_button.dart';
export 'src/components/buttons/france_connect_button.dart'
    hide InfoLinkButton, FranceConnectBase;
export 'src/theme/colors.dart';
export 'src/theme/sizes.dart';
export 'src/theme/typography.dart';
export 'src/theme_extensions/dsfr_button_style.dart';

/// Provides the default [ThemeExtension] for the flutter_dsfr theme in light
/// mode.
final dsfrExtensionsLight = <ThemeExtension>[
  const DSFRColors.light(),
  DSFRTypography.light(),
  const DSFRSizes.regular(),
  DSFRButtonStyle.light(),
];

/// Provides the default [ThemeExtension] for the flutter_dsfr theme in dark
/// mode.
final dsfrExtensionsDark = <ThemeExtension>[
  const DSFRColors.dark(),
  DSFRTypography.dark(),
  const DSFRSizes.regular(),
  DSFRButtonStyle.dark(),
];
