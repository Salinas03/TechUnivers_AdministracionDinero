import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 13.fSize,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 14.fSize,
      );
  static get bodySmallGreenA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA700,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get bodySmallPrimaryContainer10 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimaryContainer10_1 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get bodySmallPrimaryContainer11 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 11.fSize,
      );
  static get bodySmallPrimaryContainer8 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 8.fSize,
      );
  static get bodySmallPrimaryContainerLight =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPrimaryContainer_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Label text style
  static get labelLargeOnError => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  // Title text style
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
