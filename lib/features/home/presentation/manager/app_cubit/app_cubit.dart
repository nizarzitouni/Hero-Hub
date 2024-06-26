// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../../../core/services/service_locator.dart';
// import '../../../../auth/presentation/manager/auth_cubit/auth_cubit.dart';
// import '../../../data/home_repo.dart';
// import 'package:purchases_flutter/purchases_flutter.dart';

// import '../../../../../core/secrets/revnuecat_secrets.dart';
// import '../../../../livestream/data/models/stream_platform.dart';
// import 'app_state.dart';

// class AppCubit extends Cubit<AppState> {
//   final HomeRepo _homeRepo;

//   late StreamPlatform selectedStreamPlatform;

//   bool _subscriptionActive = false;
//   bool get subscriptionActive => _subscriptionActive;

//   AppCubit(this._homeRepo) : super(AppInitialState()) {
//     _addCustomerInfoUpdateListener();
//   }

//   void selectStreamingPlatform({required StreamPlatform streamPlatform}) {
//     selectedStreamPlatform = streamPlatform;
//     emit(SelectPlatformState());
//   }

//   void _addCustomerInfoUpdateListener() {
//     Purchases.addCustomerInfoUpdateListener((customerInfo) {
//       // Check if the subscription is active
//       bool isSubscriptionActive = customerInfo.entitlements.all[RevenuecatSecrets.entitlementID]?.isActive ?? false;

//       // Update the local variable
//       _subscriptionActive = isSubscriptionActive;
//       // print('$_subscriptionActive _subscriptionActive activated');
//       updatePremiumUserStatus(premiumUser: _subscriptionActive);
//       // Emit a new state to reflect the change in subscription status
//       emit(SubscriptionStatusChangedState(isActive: isSubscriptionActive));
//     });
//   }

//   //~~~~~Update Ad free user atribute -----------------------------------------------------------------------------------------------------------------------

//   Future<void> updatePremiumUserStatus({required bool premiumUser}) async {
//     emit(LaodingState());
//     if (serviceLocator<AuthCubit>().userAccount!.premiumUser) {
//       return;
//     } else {
//       await _homeRepo.updatePremiumUserStatus(premiumUser: premiumUser);
//     }
//     emit(AdfreeStateUpdated());
//   }
// }
