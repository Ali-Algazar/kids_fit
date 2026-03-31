import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';

class OnboardingHeader extends StatelessWidget {
  final VoidCallback onSkip;
  final VoidCallback onBack;
  final bool showBack;

  const OnboardingHeader({
    super.key,
    required this.onSkip,
    required this.onBack,
    required this.showBack,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          showBack
              ? IconButton(
                  onPressed: onBack,
                  icon: const Icon(Icons.arrow_back, color: Color(0xFF37246A)),
                )
              : const SizedBox(width: 48),
          TextButton(
            onPressed: onSkip,
            child: Text(
              'Skip',
              style: AppTextStyles.labelEn.copyWith(
                color: const Color(0xFF37246A),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
