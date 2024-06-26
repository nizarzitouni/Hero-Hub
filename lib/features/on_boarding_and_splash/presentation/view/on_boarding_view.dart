import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../auth/presentation/functions/user_loged_in.dart';
import '../../../../core/config/app_information.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/routes/routes.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utility/spacing.dart';

import '../../../../core/widgets/my_buttons.dart';
import '../../data/on_boarding_item.dart';
import '../functions/on_boarding_visited.dart';
import 'widgets/on_boarding_widget/page_indicator.dart';
import 'widgets/on_boarding_widget/wallet.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> rotationAnimation;
  late final PageController pageController;
  static const viewportFraction = 0.7;
  int activeIndex = 0;

  @override
  void initState() {
    pageController = PageController(viewportFraction: viewportFraction);
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    final curvedAnimation = CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    rotationAnimation = Tween<double>(begin: 0, end: 30 * pi / 180).animate(curvedAnimation);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final itemWidth = screenSize.width * viewportFraction;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            verticalSpace(40),
            Center(child: Text(AppInformation.title, style: AppTextStyles.big28TitlesBold)),
            verticalSpace(40),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  //Right Bot White Container
                  const Positioned(
                    left: -250 + 40,
                    width: 250,
                    top: -32,
                    bottom: -32,
                    child: WalletSide(),
                  ),
                  //Cards
                  Positioned.fill(
                    child: GestureDetector(
                      onTapDown: (_) => animationController.forward(),
                      onTapUp: (_) => animationController.reverse(),
                      child: PageView.builder(
                        controller: pageController,
                        itemCount: onBoardingItems.length,
                        onPageChanged: (int index) {
                          setState(() => activeIndex = index);

                          animationController.forward().then((value) => animationController.reverse());
                        },
                        itemBuilder: (context, index) {
                          return AnimatedScale(
                            duration: const Duration(milliseconds: 300),
                            scale: index == activeIndex ? 1 : 0.8,
                            curve: Curves.easeOut,
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppPallete.onBlack,
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage(onBoardingItems[index].image),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  //Right Top White Container
                  Positioned(
                    left: -250 + 35,
                    width: 250,
                    top: -30,
                    bottom: -30,
                    child: AnimatedBuilder(
                      animation: animationController,
                      builder: (context, child) {
                        return Transform(
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.001)
                            ..rotateY(rotationAnimation.value),
                          alignment: Alignment.center,
                          child: const WalletSide(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: (screenSize.width - itemWidth) / 2,
                right: (screenSize.width - itemWidth) / 2,
                top: 40,
                bottom: 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ..._buildItemInfo(activeIndex: activeIndex),
                  PageIndicator(length: onBoardingItems.length, activeIndex: activeIndex),

                  //Get Started Btn
                  CustomFilledButton(
                    onPressed: () {
                      onBoardingVisited();

                      if (isUserAuthenticated()) {
                        context.pushReplacementNamed(Routes.kEntryPointView);
                      } else {
                        context.pushReplacementNamed(Routes.kLoginView);
                      }
                    },
                    text: 'Get Started!',
                    borderRadius: 10,
                    backgroundColor: AppPallete.primary,
                    height: 45,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildItemInfo({int activeIndex = 0}) {
    return [
      Center(
        child: Text(
          onBoardingItems[activeIndex].title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      verticalSpace(10),
      Center(
        child: Text(
          onBoardingItems[activeIndex].subtitle,
          style: TextStyle(fontSize: 16.sp),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }
}
