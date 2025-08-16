import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:rapidofix/constants/app_colors.dart';

class OtpInputScreen extends StatelessWidget {
  OtpInputScreen({super.key});

  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    /// Default theme for OTP box
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: AppColors.purpleColor.withAlpha(20),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    /// Focused theme when user types
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      borderRadius: BorderRadius.circular(10),
    );

    /// Submitted theme after filling
    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: AppColors.purpleColor.withAlpha(60),
      ),
    );

    return Center(
      child: Pinput(
        length: 4,
        // number of OTP digits
        controller: otpController,
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: focusedPinTheme,
        submittedPinTheme: submittedPinTheme,
        showCursor: true,
        keyboardType: TextInputType.number,
        hapticFeedbackType: HapticFeedbackType.vibrate,

        /// When user completes OTP
        onCompleted: (pin) {
          debugPrint('Entered OTP: $pin');
          // ✅ Here you can call your verify API
        },
      ),
    );
  }
}
