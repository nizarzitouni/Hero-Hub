import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:hero_hub/core/api/dio_consumer.dart';
import 'package:hero_hub/features/favorites_screen/presentation/manager/favorite_cubit/favorite_cubit.dart';
import 'package:hero_hub/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../app/app_cubit/app_cubit.dart';
import '../../features/auth/data/repos/auth_repo_impl_with_firebase.dart';
import '../../features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import '../../features/home/data/repos/marvel_repo_impl.dart';
import '../../firebase_options.dart';
import 'cache_helper.dart';

final serviceLocator = GetIt.instance;
Talker talker = serviceLocator<Talker>();

Future<void> setupServiceLocator() async {
  final dio = Dio();

  serviceLocator.registerSingleton<DioConsumer>(DioConsumer(dio: dio));
  serviceLocator.registerSingleton<Talker>(TalkerFlutter.init());
  // serviceLocator.registerSingleton<Connectivity>(Connectivity());

  serviceLocator.registerSingleton<CacheHelper>(CacheHelper());
  await serviceLocator<CacheHelper>().init();

  await _initFirebase();
  _initAuth();

  serviceLocator.registerSingleton<AppCubit>(AppCubit());
  serviceLocator.registerLazySingleton<MarvelRepoImpl>(() => MarvelRepoImpl(serviceLocator<DioConsumer>()));
  serviceLocator.registerSingleton<HomeCubit>(HomeCubit(serviceLocator<MarvelRepoImpl>()));
  serviceLocator.registerLazySingleton<FavoritesCubit>(() => FavoritesCubit(serviceLocator<CacheHelper>()));

  // talker.info("Setup Service Locator is DONE!");
}

Future<void> _initFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

void _initAuth() {
  serviceLocator.registerLazySingleton<AuthRepoImplWithFirebase>(() => AuthRepoImplWithFirebase());
  serviceLocator.registerSingleton<AuthCubit>(AuthCubit(serviceLocator<AuthRepoImplWithFirebase>()));
}
