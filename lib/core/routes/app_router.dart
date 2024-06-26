import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hero_hub/features/favorites_screen/presentation/views/favorites_view.dart';
import 'package:hero_hub/features/home/data/repos/marvel_repo_impl.dart';
import '../../features/home/presentation/manager/character_details_cubit/character_details_cubit.dart';
import '../../features/home/presentation/views/character_detail_view.dart';
import '../../features/profile/presentation/views/profile_view.dart';
import '../../features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/signup_view.dart';
import '../../features/entry_point/presentation/views/entry_point.dart';
import '../../features/home/data/models/character.dart';
import '../../features/home/presentation/views/home_view.dart';

import '../../features/on_boarding_and_splash/presentation/view/on_boarding_view.dart';
import '../../features/on_boarding_and_splash/presentation/view/splash_view.dart';
import '../services/service_locator.dart';
import 'routes.dart';

abstract class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;

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
      case Routes.kCharacterDetailsView:
        // Check if arguments are provided and cast them appropriately
        if (args is Character) {
          return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => CharacterDetailsCubit(serviceLocator<MarvelRepoImpl>())..loadCharacterComics(args.id),
              child: CharacterDetailView(character: args),
            ),
          );
        } else {
          // if no arguments or wrong type of arguments are provided
          return MaterialPageRoute(
            builder: (_) => const ErrorRoute(),
          );
        }

      case Routes.kProfileView:
        return MaterialPageRoute(
          builder: (_) => const ProfileView(),
        );
      case Routes.kFavoriteView:
        return MaterialPageRoute(
          builder: (_) => const FavoritesView(),
        );

      default:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const ErrorRoute(),
        );
    }
  }
}

class ErrorRoute extends StatelessWidget {
  const ErrorRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('404'),
      ),
    );
  }
}
