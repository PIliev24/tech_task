import 'package:flutter/material.dart';

import 'app_colors.dart';

const fontFamily = 'SF';

class AppTheme {
  ThemeData get theme => ThemeData(
        fontFamily: fontFamily,
        extensions: <ThemeExtension<dynamic>>[
          _colors,
        ],
        primaryColor: _colors.primary,
        splashColor: _colors.surface?.withOpacity(0.1),
        colorScheme: _colorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: _colors.primaryAccent,
        ),
        textTheme: _textTheme,
        textSelectionTheme: _textSelectionTheme,
        inputDecorationTheme: _inputDecorationTheme,
        elevatedButtonTheme: _elevatedButtonTheme,
        bottomSheetTheme: _bottomSheetTheme,
        timePickerTheme: _timePickerTheme,
        checkboxTheme: _checkBoxTheme,
      );

  AppColors get _colors => AppColors.main();

  ColorScheme get _colorScheme => const ColorScheme.dark().copyWith(
        secondary: _colors.secondary,
        primary: _colors.primary,
        background: _colors.primaryAccent,
        error: _colors.error,
        brightness: Brightness.light,
      );

  TimePickerThemeData get _timePickerTheme => TimePickerThemeData(
        dayPeriodColor: _colors.primary,
        dayPeriodBorderSide: BorderSide(color: _colors.primary!),
        hourMinuteTextColor: _colors.primaryAccent,
        dialHandColor: _colors.primaryAccent,
        hourMinuteColor: MaterialStateColor.resolveWith(
          (states) => states.contains(MaterialState.selected)
              ? _colors.primary!
              : _colors.primary!.withOpacity(0.5),
        ),
        dayPeriodTextColor: _colors.primaryAccent,
        helpTextStyle: _textTheme.headlineMedium!.copyWith(
          color: _colors.primaryAccent,
        ),
        entryModeIconColor: _colors.primaryAccent,
      );

  CheckboxThemeData get _checkBoxTheme => CheckboxThemeData(
        side: BorderSide(color: _colors.onSurface!),
        checkColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return _colors.surface;
          }
          return Colors.transparent;
        }),
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return _colors.primary;
          }
          return Colors.transparent;
        }),
      );

  BottomSheetThemeData get _bottomSheetTheme => BottomSheetThemeData(
        backgroundColor: _colors.surface,
        surfaceTintColor: _colors.surface,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        showDragHandle: false,
        dragHandleColor: _colors.surface,
      );

  TextSelectionThemeData get _textSelectionTheme => TextSelectionThemeData(
        cursorColor: _colors.onSurface,
      );

  InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
        filled: true,
        fillColor: _colors.surface,
        prefixIconColor: _colors.primary,
        hintStyle: TextStyle(
          color: _colors.onSurface,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: _colors.onSurface!.withOpacity(0.5),
            width: 0.5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(75)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: _colors.onSurface!,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(75)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: _colors.onSurface!,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(75)),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
      );

  ElevatedButtonThemeData get _elevatedButtonTheme => ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return _colors.onSurface;
            }
            return Colors.black;
          }),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return _colors.surface;
            }
            return _colors.surface;
          }),
          overlayColor: MaterialStatePropertyAll<Color?>(
            _colors.surfaceHighlightColor,
          ),
          elevation: const MaterialStatePropertyAll<double?>(0),
          textStyle: MaterialStatePropertyAll<TextStyle?>(
            _textTheme.titleLarge,
          ),
          enableFeedback: true,
          minimumSize: const MaterialStatePropertyAll<Size?>(
            Size(double.infinity, 60),
          ),
          shape: MaterialStatePropertyAll<OutlinedBorder?>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(75),
            ),
          ),
        ),
      );

  TextTheme get _textTheme => TextTheme(
        displayLarge: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w700,
          fontFamily: fontFamily,
          color: _colors.onPrimaryAccent,
        ),
        displayMedium: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.w700,
          fontFamily: fontFamily,
          color: _colors.onPrimaryAccent,
        ),
        displaySmall: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          fontFamily: fontFamily,
          color: _colors.onPrimaryAccent,
        ),
        headlineLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontFamily: fontFamily,
          color: _colors.onPrimaryAccent,
        ),
        headlineMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          fontFamily: fontFamily,
          color: _colors.onPrimaryAccent,
        ),
        headlineSmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: fontFamily,
          color: _colors.onPrimaryAccent,
        ),
        labelLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          fontFamily: fontFamily,
          color: _colors.onPrimaryAccent,
        ),
        labelMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: fontFamily,
          color: _colors.onPrimaryAccent,
        ),
        labelSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: fontFamily,
          color: _colors.onPrimaryAccent,
        ),
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: _colors.onPrimaryAccent,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: _colors.onPrimaryAccent,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: _colors.onPrimaryAccent,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
          fontFamily: fontFamily,
          color: _colors.onPrimaryAccent,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          fontFamily: fontFamily,
          color: _colors.onPrimaryAccent,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w300,
          fontFamily: fontFamily,
          color: _colors.onPrimaryAccent,
        ),
      );
}
