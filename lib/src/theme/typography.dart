import 'package:flutter/material.dart';

import '../utils/named_property.dart';
import 'sizes.dart';

@immutable
class DSFRTypography extends ThemeExtension<DSFRTypography> {
  static String? _packageName = 'flutter_dsfr';
  static String? get packageName => _packageName;

  @visibleForTesting
  static set packageName(String? value) => _packageName = value;

  final TextStyle frConnectLogin;
  final TextStyle frConnectBrand;
  final TextStyle frConnectGroup;
  final TextStyle primaryBtnLabel;
  final TextStyle secondaryBtnLabel;
  final TextStyle alertsTitle;

  const DSFRTypography._({
    required this.frConnectLogin,
    required this.frConnectBrand,
    required this.frConnectGroup,
    required this.primaryBtnLabel,
    required this.secondaryBtnLabel,
    required this.alertsTitle,
  });

  factory DSFRTypography.regular() {
    const dsfrSizes = DSFRSizes.regular();
    return DSFRTypography._(
      frConnectLogin: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 17,
        decoration: TextDecoration.none,
      ),
      frConnectBrand: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.none,
      ),
      frConnectGroup: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: dsfrSizes.v3,
        decoration: TextDecoration.none,
      ),
      primaryBtnLabel: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontWeight: FontWeight.w500,
        fontSize: dsfrSizes.w2,
        decoration: TextDecoration.none,
      ),
      secondaryBtnLabel: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        decoration: TextDecoration.none,
      ),
      alertsTitle: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        decoration: TextDecoration.none,
        fontWeight: FontWeight.w500,
        fontSize: dsfrSizes.w2,
      ),
    );
  }

  factory DSFRTypography.dark() {
    const dsfrSizes = DSFRSizes.regular();
    return DSFRTypography._(
      frConnectLogin: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 17,
        color: ColorPalette.blueFranceSun113,
        decoration: TextDecoration.none,
      ),
      frConnectBrand: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: ColorPalette.blueFranceSun113,
        decoration: TextDecoration.none,
      ),
      frConnectGroup: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        color: ColorPalette.blueFrance625,
        decoration: TextDecoration.none,
      ),
      primaryBtnLabel: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontWeight: FontWeight.w500,
        color: ColorPalette.blueFranceSun113,
        decoration: TextDecoration.none,
      ),
      secondaryBtnLabel: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        color: const Color(0xFF9a9aff),
        decoration: TextDecoration.none,
      ),
      alertsTitle: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        decoration: TextDecoration.none,
        fontWeight: FontWeight.w500,
        fontSize: dsfrSizes.w2,
      ),
    );
  }

  static DSFRTypography of(BuildContext context) =>
      Theme.of(context).extension<DSFRTypography>()!;

  @override
  DSFRTypography copyWith({
    TextStyle? primaryBtnLabel,
    TextStyle? secondaryBtnLabel,
    TextStyle? alertsTitle,
  }) {
    return DSFRTypography._(
      frConnectLogin: frConnectLogin,
      frConnectBrand: frConnectBrand,
      frConnectGroup: frConnectGroup,
      primaryBtnLabel: primaryBtnLabel ?? this.primaryBtnLabel,
      secondaryBtnLabel: secondaryBtnLabel ?? this.secondaryBtnLabel,
      alertsTitle: alertsTitle ?? this.alertsTitle,
    );
  }

  @override
  DSFRTypography lerp(ThemeExtension<DSFRTypography>? other, double t) {
    if (other is! DSFRTypography) {
      return this;
    }
    return DSFRTypography._(
      frConnectLogin: TextStyle.lerp(frConnectLogin, other.frConnectLogin, t)!,
      frConnectBrand: TextStyle.lerp(frConnectBrand, other.frConnectBrand, t)!,
      frConnectGroup: TextStyle.lerp(frConnectGroup, other.frConnectGroup, t)!,
      primaryBtnLabel:
          TextStyle.lerp(primaryBtnLabel, other.primaryBtnLabel, t)!,
      secondaryBtnLabel:
          TextStyle.lerp(secondaryBtnLabel, other.secondaryBtnLabel, t)!,
      alertsTitle: TextStyle.lerp(alertsTitle, other.alertsTitle, t)!,
    );
  }

  @visibleForTesting
  List<NamedProperty<TextStyle>> get props => [
        NamedProperty('frConnectLogin', frConnectLogin),
        NamedProperty('frConnectBrand', frConnectBrand),
        NamedProperty('frConnectGroup', frConnectGroup),
        NamedProperty('primaryBtnLabel', primaryBtnLabel),
        NamedProperty('secondaryBtnLabel', secondaryBtnLabel),
      ];
}
