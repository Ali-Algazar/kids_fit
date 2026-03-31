import 'package:flutter/material.dart';
import 'package:kids_fit/features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());

    default:
      return MaterialPageRoute(
        builder: (_) =>
            const Scaffold(body: Center(child: Text('No route defined'))),
      );
  }
}
