import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../core/assets_constants.dart';
import '../core/config/app_information.dart';
import '../core/routes/app_router.dart';
import '../core/services/service_locator.dart';
import '../core/theme/app_theme.dart';
import '../core/widgets/filtred_image_widget.dart';
import 'app_cubit/app_cubit.dart';
import 'connectivity_controller.dart';

bool isDevMode = true;

class HeroHub extends StatelessWidget {
  const HeroHub({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392.73, 851), // Adjust these values based on your design
      child: ValueListenableBuilder(
        valueListenable: ConnectivityController.instance.isConnected,
        builder: (_, value, __) {
          if (value) {
            return MultiBlocProvider(
              providers: [
                BlocProvider<AppCubit>.value(value: serviceLocator<AppCubit>()),
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: AppInformation.title,
                theme: AppTheme.lightTheme,
                navigatorObservers: [TalkerRouteObserver(talker)],
                onGenerateRoute: AppRouter.generateRoute,
                // initialRoute: AppRouter.kAuthenticateView,
                // home: const AuthenticateView(),
                // locale: const Locale('en'),
                // supportedLocales: AppLocalizationsSetup.supportedLocales,
                // localeResolutionCallback: AppLocalizationsSetup.localeResolutionCallback,
                // localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
              ),
            );
          } else {
            return const MaterialApp(
              title: 'No Network',
              debugShowCheckedModeBanner: false,
              home: FiltredImageWidget(
                imagePath: AssetsConstants.noConexionImage,
                msg: 'Please check your internet connection',
              ),
            );
          }
        },
      ),
    );
  }
}
