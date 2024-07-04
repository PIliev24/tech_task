import 'package:flutter/material.dart';
import 'package:tech_task/presentation/theme/app_colors.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  AppColors get colors => theme.extension<AppColors>()!;
}
