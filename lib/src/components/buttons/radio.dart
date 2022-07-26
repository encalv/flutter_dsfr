import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/sizes.dart';
import '../../theme/typography.dart';

const _kRadioSize = Size.square(15.0);

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/217088553/Boutons+radio+-+Radio+button
class DSFRRadioButton<T> extends StatelessWidget {
  final String label;
  final String? description;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final bool hasError;
  final bool isValid;

  const DSFRRadioButton({
    super.key,
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.description,
    this.hasError = false,
    this.isValid = false,
  });

  @override
  Widget build(BuildContext context) {
    final dsfrColors = DSFRColors.of(context);
    final dsfrTypography = DSFRTypography.of(context);
    final dsfrSizes = DSFRSizes.of(context);
    final disabled = onChanged == null;

    final Color foregroundColor;
    if (disabled) {
      foregroundColor = dsfrColors.frFieldsetDisabled;
    } else if (hasError) {
      foregroundColor = dsfrColors.error;
    } else if (isValid) {
      foregroundColor = dsfrColors.success;
    } else {
      foregroundColor = dsfrColors.frLabel;
    }

    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: foregroundColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              if (disabled)
                Container(
                  height: _kRadioSize.height,
                  width: _kRadioSize.width,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: disabled ? dsfrColors.g200 : Colors.transparent,
                  ),
                ),
              Radio<T>(
                value: value,
                groupValue: groupValue,
                onChanged: onChanged,
                activeColor: dsfrColors.radioActive,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
              ),
            ],
          ),
          SizedBox(width: dsfrSizes.w4),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: label),
                if (description != null)
                  TextSpan(
                    text: '\n$description',
                    style: dsfrTypography.frHintText
                        .copyWith(color: dsfrColors.frHintText),
                  ),
              ],
            ),
            style: dsfrTypography.frLabel.copyWith(color: foregroundColor),
          ),
        ],
      ),
    );
  }
}
