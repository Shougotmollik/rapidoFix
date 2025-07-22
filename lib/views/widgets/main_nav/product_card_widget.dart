import 'package:flutter/material.dart';
import 'package:rapidofix/constants/app_colors.dart';
import 'package:rapidofix/model/deals_model.dart';

class ProductCardWidget extends StatelessWidget {
  final DealsModel dealsModel;

  const ProductCardWidget({super.key, required this.dealsModel});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Column(
      spacing: 2,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height * 0.16,
          width: size.height * 0.21,
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage(dealsModel.imagePath),
              fit: BoxFit.cover,
            ),

            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
        ),
        Text(
          dealsModel.title,
          style: textTheme.titleMedium?.copyWith(
            color: AppColors.greyTextColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        Wrap(
          spacing: 3,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(
              '₹ ${dealsModel.price}',
              style: textTheme.titleMedium?.copyWith(
                color: AppColors.blackTextColor,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '₹ ${dealsModel.originalPrice}',
              style: textTheme.titleMedium?.copyWith(
                color: AppColors.greyTextColor,
                fontSize: 11.5,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            Text(
              '${dealsModel.discountPercentage}% Off',
              style: textTheme.titleMedium?.copyWith(
                color: AppColors.purpleColor,
                fontSize: 11.5,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Wrap(
          spacing: 4,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xffFFA000),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Icon(Icons.star, size: 14),
            ),
            Text(
              '${dealsModel.rating}',
              style: textTheme.titleMedium?.copyWith(
                color: AppColors.blackTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '(${dealsModel.ratingCount})',
              style: textTheme.titleMedium?.copyWith(
                color: AppColors.greyTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
