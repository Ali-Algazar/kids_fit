import 'package:flutter/material.dart';

class AppTextStyles {
  // ==================== H1 ====================
  // h1 - 32/40 (Arabic)
  static const TextStyle h1Ar = TextStyle(
    fontSize: 32,
    height: 40 / 32, // 1.25
    fontWeight: FontWeight.bold,
  );

  // h1 - 30/40 (English)
  static const TextStyle h1En = TextStyle(
    fontSize: 30,
    height: 40 / 30,
    fontWeight: FontWeight.bold,
  );

  // ==================== H2 (Section Titles) ====================
  // h2 عنوان القسم - 24/32
  static const TextStyle h2Ar = TextStyle(
    fontSize: 24,
    height: 32 / 24, // 1.33
    fontWeight: FontWeight.bold,
  );

  // h2 عنوان القسم بالانجليزي - 22/32
  static const TextStyle h2En = TextStyle(
    fontSize: 22,
    height: 32 / 22,
    fontWeight: FontWeight.bold,
  );

  // ==================== H3 (Subtitles) ====================
  // h3 عنوان فرعي - 16/24
  static const TextStyle h3Ar = TextStyle(
    fontSize: 16,
    height: 24 / 16, // 1.5
    fontWeight: FontWeight.w600, // SemiBold
  );

  // h3 عنوان فرعي انجليزي - 16/24
  static const TextStyle h3En = TextStyle(
    fontSize: 16,
    height: 24 / 16, // 1.5
    fontWeight: FontWeight.w600,
  );

  // ==================== Buttons ====================
  // button arabic - 16/Auto
  static const TextStyle buttonAr = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  // button english - 16/Auto
  static const TextStyle buttonEn = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  // ==================== Labels (Input Fields) ====================
  // label حقول الادخال بالعربي - 14/20
  static const TextStyle labelAr = TextStyle(
    fontSize: 14,
    height: 20 / 14, // ~1.43
    fontWeight: FontWeight.w500, // Medium
  );

  static const TextStyle labelEn = TextStyle(
    fontSize: 14,
    height: 20 / 14, // ~1.43
    fontWeight: FontWeight.w500,
  );

  // ==================== Captions (Small Notes) ====================
  // caption ملاحظات صغيره بالعربي - 12/18
  static const TextStyle captionAr = TextStyle(
    fontSize: 12,
    height: 18 / 12, // 1.5
    fontWeight: FontWeight.w400, // Regular
  );

  // caption ملاحظات صغيره بالانجليزي - 12/18
  static const TextStyle captionEn = TextStyle(
    fontSize: 12,
    height: 18 / 12, // 1.5
    fontWeight: FontWeight.w400,
  );
}
