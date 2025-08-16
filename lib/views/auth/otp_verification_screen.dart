import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidofix/constants/app_colors.dart';
import 'package:rapidofix/route/route_names.dart';
import 'package:rapidofix/views/auth/widgets/otp_input_screen.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 14,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'OTP Verification',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.purpleColor,
                ),
              ),
            ),
            Text(
              'Please enter the code we have sent to your phone number',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.greyTextColor,
              ),
            ),
            SizedBox(height: 18),
            Text(
              'OTP',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.greyTextColor,
              ),
            ),
            OtpInputScreen(),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 6,
                children: [
                  Text(
                    'Didn’t receive anything?',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                  Text(
                    'Resend Code',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.purpleColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () => Get.offAllNamed(RouteNames.navBarScreen),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: AppColors.purpleColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Verify & Proceed',
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
