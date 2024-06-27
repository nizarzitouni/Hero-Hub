import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_extension.dart';
import '../../../../../../core/routes/routes.dart';
import '../../../../../../core/services/cache_helper.dart';
import '../../../../../../core/services/service_locator.dart';
import 'sliding_logo_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();

    final isOnBoardingVisitedBool = serviceLocator<CacheHelper>().getData(key: CacheKeys.onBoardingVisited) as bool? ?? false;
    final isLogedIn = serviceLocator<CacheHelper>().getData(key: CacheKeys.isLogedIn) as bool? ?? false;

    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingVisitedBool) {
        if (isLogedIn) {
          context.pushReplacementNamed(Routes.kEntryPointView);
        } else {
          context.pushReplacementNamed(Routes.kLoginView);
        }
      } else {
        context.pushReplacementNamed(Routes.kOnboardingView);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: SlidingLogoText(slidingAnimation: slidingAnimation));
  }

  void initSlidingAnimation() {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    //we are using the slidingAnimation object beacause we need time more then 0 to 1(wich AnimationController provides)
    slidingAnimation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero).animate(animationController);
    animationController.forward();
  }
}
