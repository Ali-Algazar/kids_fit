import 'package:flutter/material.dart';
import 'package:kids_fit/core/helper_functions/on_generate_routes.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(const KidsFitApp());
}

class KidsFitApp extends StatelessWidget {
  const KidsFitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kids Fit',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
