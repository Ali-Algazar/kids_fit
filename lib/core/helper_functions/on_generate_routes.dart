import 'package:flutter/material.dart';
import 'package:kids_fit/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:kids_fit/features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnboardingView());

    default:
      return MaterialPageRoute(
        builder: (_) =>
            const Scaffold(body: Center(child: Text('No route defined'))),
      );
  }
}
