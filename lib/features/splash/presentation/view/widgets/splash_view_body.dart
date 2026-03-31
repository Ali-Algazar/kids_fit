import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kids_fit/core/extensions/extensions.dart';
import 'package:kids_fit/core/utils/app_text_styles.dart';
import 'package:kids_fit/features/onboarding/presentation/view/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _progressController;

  @override
  void initState() {
    super.initState();
    initAnimation();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Positioned(
          left: -40,
          top: size.height * 0.6,
          child: Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
              color: Color(0x3337246A),
              shape: BoxShape.circle,
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
              child: Container(color: Colors.transparent),
            ),
          ),
        ),

        SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 2),

                Image.asset('assets/images/splash_logo.png'),
                const SizedBox(height: 40),

                TextLogo(),

                12.h,

                const Text(
                  'Move. Play. Grow!',
                  style: TextStyle(color: Color(0xFF475569), fontSize: 16),
                ),

                const Spacer(flex: 1),

                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 4,
                      color: const Color(0x1937246A),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.star_border_rounded,
                      color: Color(0xFFF2A20D),
                      size: 32,
                    ),
                  ),
                ),

                24.h,

                Padding(
                  padding: 40.horizontal,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Setting up your adventure...',
                            style: AppTextStyles.labelAr.copyWith(
                              color: Color(0xB237246A),
                            ),
                          ),
                          Text(
                            '${(_progressController.value * 100).toInt()}%',
                            style: AppTextStyles.labelAr.copyWith(
                              color: Color(0xB237246A),
                            ),
                          ),
                        ],
                      ),
                      12.h,
                      ProgressLinear(progress: _progressController.value),
                    ],
                  ),
                ),

                const Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void initAnimation() {
    _progressController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.pushNamedAndRemoveUntil(
                context,
                OnboardingView.routeName,
                (route) => false,
              );
            }
          });

    _progressController.forward();
  }

  @override
  void dispose() {
    _progressController.dispose();
    super.dispose();
  }
}

class ProgressLinear extends StatelessWidget {
  const ProgressLinear({super.key, required this.progress});

  final double progress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0x1937246A),
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.centerLeft,
      child: FractionallySizedBox(
        widthFactor: progress,
        child: Container(
          height: 12,
          decoration: BoxDecoration(
            color: const Color(0xFF37246A),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class TextLogo extends StatelessWidget {
  const TextLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(text: 'Kids ', style: AppTextStyles.h1Ar),
          TextSpan(
            text: 'Fit',
            style: AppTextStyles.h1Ar.copyWith(color: const Color(0xFFF2A20D)),
          ),
        ],
      ),
    );
  }
}
