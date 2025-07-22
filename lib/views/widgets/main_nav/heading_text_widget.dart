import 'package:flutter/material.dart';
import 'package:rapidofix/constants/app_colors.dart';

class HeadingTextWidget extends StatelessWidget {
  const HeadingTextWidget({
    super.key,
    required this.headingText,
    required this.onTap,
  });

  final String headingText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          headingText,
          style: textTheme.headlineSmall?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextButton(
          onPressed: onTap,
          child: Text(
            'View all',
            style: textTheme.headlineSmall?.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.purpleColor,
            ),
          ),
        ),
      ],
    );
  }
}
