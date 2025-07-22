import 'package:flutter/material.dart';
import 'package:rapidofix/constants/app_colors.dart';

class BikeChangeButtonWidget extends StatelessWidget {
  const BikeChangeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Bike Name',
          style: textTheme.titleMedium?.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Change',
            style: textTheme.titleMedium?.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.purpleColor,
            ),
          ),
        ),
      ],
    );
  }
}
