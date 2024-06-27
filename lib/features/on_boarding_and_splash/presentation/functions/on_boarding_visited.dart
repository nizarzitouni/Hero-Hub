import '../../../../core/services/cache_helper.dart';
import '../../../../core/services/service_locator.dart';

void onBoardingVisited() {
  serviceLocator<CacheHelper>().saveData(key: CacheKeys.onBoardingVisited, value: true);
}
