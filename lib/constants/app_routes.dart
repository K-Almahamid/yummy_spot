import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_strings.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/features/home/view/home_view.dart';
import 'package:yummy_spot/features/landing_view.dart';

class Routes {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onBoarding';
  static const String landingRoute = '/landing';
  static const String homeRoute = '/home';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.landingRoute:
        return MaterialPageRoute(builder: (_) => const LandingView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return MaterialPageRoute(builder: (_) => const LandingView());
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text(
            AppStrings.noRouteFound,
            style: getBoldStyle(
              color: AppColors.black,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
