import 'package:flutter/material.dart';
import 'package:hero_hub/features/profile/presentation/views/profile_view.dart';
import '../../features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/signup_view.dart';
import '../../features/entry_point/presentation/views/entry_point.dart';
import '../../features/home/presentation/views/home_view.dart';

import '../../features/on_boarding_and_splash/presentation/view/on_boarding_view.dart';
import '../../features/on_boarding_and_splash/presentation/view/splash_view.dart';
import 'routes.dart';

abstract class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.kSplashView:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.kOnboardingView:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingView(),
        );
      case Routes.kLoginView:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case Routes.kSignUpView:
        return MaterialPageRoute(
          builder: (_) => const SignupView(),
        );

      // case Routes.kAuthenticateView:
      //   return MaterialPageRoute(
      //     builder: (_) => const AuthenticateView(),
      //   );

      case Routes.kEntryPointView:
        return MaterialPageRoute(
          builder: (_) => const EntryPoint(),
        );

      case Routes.kHomeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      case Routes.kProfileView:
        return MaterialPageRoute(
          builder: (_) => const ProfileView(),
        );

      default:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('404'),
            ),
          ),
        );
    }
  }
}
