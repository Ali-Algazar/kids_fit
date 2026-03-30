import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      // 1. تحديد الخط الأساسي (تأكد من إضافته في pubspec.yaml)
      fontFamily: 'Cairo', // أو 'Tajawal' / 'Poppins' حسب تصميمك
      // 2. لون خلفية التطبيق
      scaffoldBackgroundColor: AppColors.bgApp,

      // 3. خريطة الألوان الأساسية (Color Scheme)
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.bgCard,
        error: Colors.redAccent,
        onPrimary: AppColors.textLight,
        onSecondary: AppColors.textLight,
        onSurface: AppColors.textPrimary,
      ),

      // 4. تصميم الـ AppBar
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.bgApp, // نفس لون الخلفية عشان يندمج معاها
        elevation: 0, // بدون ظل
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.textPrimary),
        titleTextStyle: AppTextStyles.h2Ar.copyWith(
          color: AppColors.textPrimary,
        ),
      ),

      // 5. تصميم الأزرار (ElevatedButton)
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textLight, // لون التكست جوه الزرار
          textStyle: AppTextStyles.buttonAr,
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16), // حواف دائرية مرحة
          ),
        ),
      ),

      // 6. تصميم حقول الإدخال (TextFormFields)
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.bgCard, // خلفية بيضاء للحقل
        hintStyle: AppTextStyles.labelAr.copyWith(
          color: AppColors.textPrimary.withValues(alpha: 0.5),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        // الحواف العادية
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none, // بدون خط خارجي (شكل مودرن)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        // الحواف عند الضغط على الحقل
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: AppColors.secondary, // خط برتقالي عند التركيز
            width: 1.5,
          ),
        ),
        // الحواف عند الخطأ
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.redAccent, width: 1.5),
        ),
      ),
    );
  }
}
