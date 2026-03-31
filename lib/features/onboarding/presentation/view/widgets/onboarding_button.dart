import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';

class OnboardingButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool showArrow;

  const OnboardingButton({
    super.key,
    required this.text,
    required this.onTap,
    this.showArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(48),
        child: Container(
          width: double.infinity,
          height: 68,
          decoration: BoxDecoration(
            color: const Color(0xFF37246A),
            borderRadius: BorderRadius.circular(48),
            boxShadow: const [
              BoxShadow(
                color: Color(0x3337246A),
                blurRadius: 15,
                offset: Offset(0, 10),
                spreadRadius: -3,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: AppTextStyles.buttonEn.copyWith(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              if (showArrow) ...[
                const SizedBox(width: 8),
                const Icon(Icons.arrow_forward, color: Colors.white, size: 24),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
