import 'package:flutter/material.dart';

import '../../../theme/theme_config.dart';
import '../../../theme/theme_size.dart';

class QButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double? width;
  final IconData? prefixIcon;
  final IconData? sufixIcon;
  final Color? color;
  final bool spaceBetween;
  final ThemeSize size;

  const QButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.width,
    this.prefixIcon,
    this.sufixIcon,
    this.color,
    this.spaceBetween = false,
    this.size = ThemeSize.md,
  });

  @override
  Widget build(BuildContext context) {
    double widgetWidth = width ?? MediaQuery.of(context).size.width;
    double widgetHeight = 46.0;
    double widgetFontSize = 16.0;
    double widgetIconSize = 24.0;

    widgetWidth *= size.scaleFactor;
    widgetHeight *= size.scaleFactor;
    widgetFontSize *= size.scaleFactor;
    widgetIconSize *= size.scaleFactor;

    return SizedBox(
      width: widgetWidth,
      height: widgetHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? primaryColor,
        ),
        onPressed: () => onPressed(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixIcon != null) ...[
              Icon(
                prefixIcon!,
                size: widgetIconSize,
              ),
              const SizedBox(
                width: 6.0,
              ),
            ],
            if (spaceBetween && prefixIcon != null) const Spacer(),
            Text(
              label,
              style: TextStyle(
                fontSize: widgetFontSize,
              ),
            ),
            if (spaceBetween && sufixIcon != null) const Spacer(),
            if (sufixIcon != null) ...[
              Icon(
                sufixIcon!,
                size: widgetIconSize,
              ),
              const SizedBox(
                width: 6.0,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
