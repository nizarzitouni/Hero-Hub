import 'package:flutter/material.dart';
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
      // case kLoginView:
      //   return MaterialPageRoute(
      //     builder: (_) => const LoginView(),
      //   );
      // case kSignUpView:
      //   return MaterialPageRoute(
      //     builder: (_) => const SignupView(),
      //   );

      // case Routes.kAuthenticateView:
      //   return MaterialPageRoute(
      //     builder: (_) => const AuthenticateView(),
      //   );

      // case Routes.kEntryPointView:
      //   return MaterialPageRoute(
      //     builder: (_) => const EntryPoint(),
      //   );

      case Routes.kHomeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
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
