import '../../../../core/services/cache_helper.dart';
import '../../../../core/services/service_locator.dart';

void userLogedIn(bool isLogedIn) {
  serviceLocator<CacheHelper>().saveData(key: CacheKeys.isLogedIn, value: isLogedIn);
}
