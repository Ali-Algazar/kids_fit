import 'package:flutter/material.dart';
import 'package:kids_fit/core/utils/app_colors.dart';
import 'widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static const String routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgApp,
      body: OnboardingViewBody(),
    );
  }
}
