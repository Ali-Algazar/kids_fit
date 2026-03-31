import 'package:flutter/material.dart';
import '../../../data/models/onboarding_model.dart';
import 'onboarding_button.dart';
import 'onboarding_dots.dart';
import 'onboarding_header.dart';
import 'onboarding_item.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingModel> _pages = [
    OnboardingModel(
      title: 'Get Healthy Without\nStrict Diets',
      subtitle: 'Move, Play, Feel Good!',

      imagePath: 'assets/images/onboarding1.png',
    ),
    OnboardingModel(
      title: 'Fun Workouts Every\nDay',
      subtitle: 'Join the party and get moving!',
      imagePath: 'assets/images/onboarding2.png',
    ),
    OnboardingModel(
      title: 'Rewards & Fun\nChallenges!',
      subtitle:
          'Earn badges and collect stars as you\ncomplete your daily goals. Make progress\nevery day!',
      imagePath: 'assets/images/onboarding3.png',
    ),
  ];

  void _onNext() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _onSkip();
    }
  }

  void _onBack() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _onSkip() {
    // ACTION REQUIRED: مسار الانتقال للشاشة الرئيسية أو تسجيل الدخول
    // Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          OnboardingHeader(
            onSkip: _onSkip,
            onBack: _onBack,
            showBack: _currentPage > 0,
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _pages.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return OnboardingItem(model: _pages[index]);
              },
            ),
          ),
          OnboardingDots(currentPage: _currentPage, totalPages: _pages.length),
          OnboardingButton(
            text: _currentPage == _pages.length - 1 ? 'Get Started' : 'Next',
            showArrow: _currentPage != _pages.length - 1,
            onTap: _onNext,
          ),
        ],
      ),
    );
  }
}
