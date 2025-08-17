import 'package:flutter/material.dart';
import 'package:rapidofix/constants/app_colors.dart';
import 'package:rapidofix/model/shop_category_model.dart';

class ShopCategoryCardWidget extends StatelessWidget {
  const ShopCategoryCardWidget({super.key, required this.categories});

  final ShopCategoryModel categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            categories.imagePath,
            height: 70,
            width: 70,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          categories.title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.greyTextColor,
          ),
        ),
      ],
    );
  }
}
