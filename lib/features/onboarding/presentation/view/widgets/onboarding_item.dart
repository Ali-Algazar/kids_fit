import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/models/onboarding_model.dart';

class OnboardingItem extends StatelessWidget {
  final OnboardingModel model;

  const OnboardingItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(model.imagePath, fit: BoxFit.contain),
          ),
          const SizedBox(height: 32),
          Text(
            model.title,
            textAlign: TextAlign.center,
            style: AppTextStyles.h1En.copyWith(
              color: const Color(0xFF37246A),
              fontSize: 32,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            model.subtitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.h3En.copyWith(color: const Color(0xFF475569)),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
