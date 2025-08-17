import 'package:flutter/material.dart';
import 'package:rapidofix/constants/app_colors.dart';

class LocationCardWidget extends StatelessWidget {
  const LocationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.purpleColor.withAlpha(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
            onPressed: () {},
            label: Text(
              '19-A, Nehru Colony, Dehradun',
              style: TextStyle(
                color: AppColors.greyTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            icon: Icon(Icons.location_on_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.greyTextColor,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
