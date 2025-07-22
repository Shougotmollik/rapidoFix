import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rapidofix/constants/app_colors.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: AppColors.purpleColor,
    onPrimary: Colors.white,
    brightness: Brightness.light,
    surfaceTint: Colors.white,
    surface: Colors.white,
    onSurface: Colors.black,
  ),
  iconTheme: IconThemeData(color: Colors.white),
  textTheme: GoogleFonts.interTextTheme(),
  navigationBarTheme: NavigationBarThemeData(
    labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
    height: 72,
    indicatorColor: Colors.transparent,
    backgroundColor: Colors.white,
    labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((
      Set<WidgetState> states,
    ) {
      if (states.contains(WidgetState.selected)) {
        return const TextStyle(
          color: AppColors.purpleColor,
          fontWeight: FontWeight.bold,
          fontSize: 11,
        );
      }
      return const TextStyle(color: Colors.grey, fontSize: 11);
    }),
    iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((
      Set<WidgetState> states,
    ) {
      if (states.contains(WidgetState.selected)) {
        return const IconThemeData(color: AppColors.purpleColor, size: 24);
      }
      return const IconThemeData(color: Colors.grey, size: 24);
    }),
  ),
);
