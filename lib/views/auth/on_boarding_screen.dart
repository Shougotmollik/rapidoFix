import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidofix/constants/app_colors.dart';
import 'package:rapidofix/route/route_names.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Spacer(),
              Image.asset('assets/images/Navigation_Illustration.png'),
              SizedBox(height: 20),
              Text(
                'Assist with Navigation',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.purpleColor,
                ),
              ),
              Text(
                'Use real-time route information to schedule your ride.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.greyTextColor,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () => Get.offAllNamed(RouteNames.loginScreen),
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
      ),
    );
  }
}
