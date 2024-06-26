import 'package:flutter/material.dart';

import '../../../theme/theme_config.dart';

class QActionButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  const QActionButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    const padding = 20.0;
    const height = 46.0;

    return Container(
      padding: const EdgeInsets.all(padding),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: height + (padding * 2),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
        ),
        onPressed: () => onPressed(),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
