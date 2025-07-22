import 'package:flutter/material.dart';
import 'package:rapidofix/constants/app_colors.dart';
import 'package:rapidofix/model/care_model.dart';

class CareCardWidget extends StatelessWidget {
  final CareModel careModel;

  const CareCardWidget({super.key, required this.careModel});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height / 9,
          width: size.width / 3.5,
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage(careModel.imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        Text(
          careModel.title,
          style: textTheme.titleMedium?.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.greyTextColor,
          ),
        ),
      ],
    );
  }
}
