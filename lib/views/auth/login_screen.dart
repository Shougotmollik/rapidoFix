import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidofix/constants/app_colors.dart';
import 'package:rapidofix/route/route_names.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneTEController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            SizedBox(height: 78),

            Align(
              alignment: Alignment.center,
              child: Text(
                'Enter your phone number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.purpleColor,
                ),
              ),
            ),
            Text(
              'Please confirm your country code and enter your phone number.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.greyTextColor,
              ),
            ),
            SizedBox(height: 18),
            Text(
              'Country',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.greyTextColor,
              ),
            ),

            /// Country selector (dummy for now)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.deepPurple.withAlpha(10),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Text(
                    "🇮🇳",
                    style: TextStyle(fontSize: 20),
                  ), // Flag emoji
                  const SizedBox(width: 10),
                  const Text(
                    "India",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey[600],
                  ),
                ],
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Phone Number',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.greyTextColor,
              ),
            ),

            /// Phone number field
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.deepPurple.withAlpha(10),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Text(
                    "+91",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const VerticalDivider(
                    width: 20,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: TextField(
                      controller: phoneTEController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        hintText: "Phone Number",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () => Get.toNamed(RouteNames.otpVerificationScreen),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: AppColors.purpleColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
