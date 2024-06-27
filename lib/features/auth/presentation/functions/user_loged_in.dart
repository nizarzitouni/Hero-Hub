import '../../../../core/services/cache_helper.dart';
import '../../../../core/services/service_locator.dart';

void userAuthenticated(bool isLogedIn) {
  serviceLocator<CacheHelper>().saveData(key: CacheKeys.isLogedIn, value: isLogedIn);
}

bool isUserAuthenticated() {
  final isLogedIn = serviceLocator<CacheHelper>().getData(key: CacheKeys.isLogedIn) as bool? ?? false;
  return isLogedIn;
}
