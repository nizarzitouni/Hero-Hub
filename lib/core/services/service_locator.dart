import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../app/app_cubit/app_cubit.dart';
import 'cache_helper.dart';

final serviceLocator = GetIt.instance;
Talker talker = serviceLocator<Talker>();

Future<void> setupServiceLocator() async {
  serviceLocator.registerSingleton<Talker>(TalkerFlutter.init());
  // serviceLocator.registerSingleton<Connectivity>(Connectivity());

  serviceLocator.registerSingleton<CacheHelper>(CacheHelper());
  await serviceLocator<CacheHelper>().init();

  // await _initFirebase();
  // _initAuth();

  // serviceLocator.registerSingleton<InternetCubit>(InternetCubit(connectivity: serviceLocator<Connectivity>()));

  // serviceLocator.registerLazySingleton<HomeRepoImpl>(() => HomeRepoImpl());
  // serviceLocator.registerSingleton<AppCubit>(AppCubit(serviceLocator<HomeRepoImpl>()));
  serviceLocator.registerSingleton<AppCubit>(AppCubit());

  // talker.info("Setup Service Locator is DONE!");
}

// Future<void> _initFirebase() async {
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
// }

// void _initAuth() {
//   serviceLocator.registerLazySingleton<AuthRepoImplWithFirebase>(() => AuthRepoImplWithFirebase());
//   serviceLocator.registerSingleton<AuthCubit>(AuthCubit(serviceLocator<AuthRepoImplWithFirebase>()));
// }
