import 'package:flutter/material.dart';

class OnboardingDots extends StatelessWidget {
  final int currentPage;
  final int totalPages;

  const OnboardingDots({
    super.key,
    required this.currentPage,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalPages,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 6),
          height: 8,
          width: currentPage == index ? 24 : 8,
          decoration: BoxDecoration(
            color: currentPage == index
                ? const Color(0xFF37246A)
                : const Color(0x3337246A),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
