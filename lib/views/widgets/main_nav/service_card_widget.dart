import 'package:flutter/material.dart';
import 'package:rapidofix/constants/app_colors.dart';
import 'package:rapidofix/model/service_model.dart';

class ServiceCardWidget extends StatelessWidget {
  final ServiceModel serviceModel;

  const ServiceCardWidget({super.key, required this.serviceModel});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Column(
      spacing: 2,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height * 0.14,
          width: size.height * 0.21,
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage(serviceModel.imagePath),
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
          serviceModel.title,
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
              '₹ ${serviceModel.price}',
              style: textTheme.titleMedium?.copyWith(
                color: AppColors.blackTextColor,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '₹ ${serviceModel.originalPrice}',
              style: textTheme.titleMedium?.copyWith(
                color: AppColors.greyTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            Text(
              '${serviceModel.discountPercentage}% Off',
              style: textTheme.titleMedium?.copyWith(
                color: AppColors.purpleColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
