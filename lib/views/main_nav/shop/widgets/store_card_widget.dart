import 'package:flutter/material.dart';
import 'package:rapidofix/constants/app_colors.dart';
import 'package:rapidofix/model/store_model.dart';

class StoreCardWidget extends StatelessWidget {
  const StoreCardWidget({super.key, required this.store});

  final StoreModel store;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            store.imagePath,
            height: 120,
            width: 180,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          store.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.greyTextColor,
          ),
        ),
      ],
    );
  }
}
