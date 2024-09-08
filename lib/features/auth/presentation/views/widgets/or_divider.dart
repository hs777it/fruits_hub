import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key, this.text = 'أو'});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: Color(0xFFDCDEDE))),
        const SizedBox(width: 18),
        Text(text, textAlign: TextAlign.center, style: TextStyles.semiBold16),
        const SizedBox(width: 18),
        const Expanded(child: Divider(color: Color(0xFFDCDEDE))),
      ],
    );
  }
}
