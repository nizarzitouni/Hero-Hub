import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hero_hub/features/favorites_screen/presentation/views/favorites_view.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/routes/routes.dart';
import '../../../../core/utility/utiles.dart';
import '../../../auth/presentation/manager/auth_cubit/auth_cubit.dart';
import '../../../auth/presentation/manager/auth_cubit/auth_state.dart';
import '../../../../core/assets_constants.dart';
import '../../../../core/theme/app_pallete.dart';
import '../../../../core/widgets/svg_icon_widget.dart';
import '../../../auth/presentation/functions/user_loged_in.dart';
import '../../../home/presentation/views/home_view.dart';
import '../../../profile/presentation/views/profile_view.dart';

class EntryPoint extends StatefulWidget {
  const EntryPoint({super.key});

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  int currentIndex = 0;

  final List<Widget> _screens = [
    const HomeView(),
    const FavoritesView(),
    const ProfileView(),
  ];

  void changeIndex(int index) => setState(() => currentIndex = index);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          signOutSuccess: () {
            userAuthenticated(false);
            context.pushReplacementNamed(Routes.kLoginView);
          },
          signOutFailure: (errorMessage) => showSnackBar(context: context, message: errorMessage),
          orElse: () {},
        );
      },
      child: Scaffold(
        backgroundColor: AppPallete.black, // Set the background color back to solid
        body: Stack(
          children: [
            IndexedStack(index: currentIndex, children: _screens),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: _buildBottomNavigationBar(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      height: 65.h,
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        color: AppPallete.black2,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10, offset: const Offset(0, -5)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(0, AssetsConstants.nbHomeActiveSVG, AssetsConstants.nbHomeInactiveSVG, 'Home'),
          _buildNavItem(1, AssetsConstants.nbHomeActiveSVG, AssetsConstants.nbHomeInactiveSVG, 'Favorite'),
          _buildNavItem(2, AssetsConstants.nbHomeActiveSVG, AssetsConstants.nbHomeInactiveSVG, 'Profile'),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, String activeIcon, String inactiveIcon, String label) {
    final isSelected = currentIndex == index;
    return GestureDetector(
      onTap: () => changeIndex(index),
      child: Container(
        width: 70.w, // Fixed width for all items
        height: 52.h, // Fixed height for all items
        decoration: BoxDecoration(
          color: isSelected ? AppPallete.secondary.withOpacity(0.2) : Colors.transparent,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgIconWidget(
              assetName: isSelected ? activeIcon : inactiveIcon,
              size: 24,
              svgColor: isSelected ? AppPallete.secondary : Colors.grey.withOpacity(.6),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? AppPallete.secondary : Colors.grey.withOpacity(.6),
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
