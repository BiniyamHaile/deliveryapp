import 'package:flutter/material.dart';

class AppColors {
  static AppColors? _instance;
  factory AppColors() => _instance ??= AppColors._();

  AppColors._();

  static const primaryColor = Color(0xff53B175);
  static const darkGrey = Color(0xff7C7C7C);
  static Color blueShade = Colors.blueGrey.shade800;
}
