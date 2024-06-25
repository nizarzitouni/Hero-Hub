// import 'package:google_mobile_ads/google_mobile_ads.dart';

// class AdmobService {
//   //// TODO: must change to FALSE when releasing
//   static const bool _testMode = true;
//   // static const bool _testMode = false;

//   static const String testDeviceAdsId = '88d9dc41-c183-448a-bacf-f3df1ae43dac'; //true
//   static const String testBannerAdUnitId = 'ca-app-pub-3940256099942544/6300978111';
//   static const String testRewardedAdUnitId = 'ca-app-pub-3940256099942544/5224354917';
//   static const String testInterstitialAdUnitId = 'ca-app-pub-3940256099942544/1033173712';

//   static const String appId = '';
//   static const String appBannerAdUnitId = '';
//   static const String appRewardedAdUnitId = '';
//   static const String appInterstitialAdUnitId = '';

//   static String get bannerAdUnitId {
//     if (_testMode) {
//       return testBannerAdUnitId;
//     }
//     return appBannerAdUnitId;
//   }

//   static String get rewardedAdUnitId {
//     if (_testMode) {
//       return testRewardedAdUnitId;
//     }
//     return appRewardedAdUnitId;
//   }

//   static String get interstitialAdUnitId {
//     if (_testMode) {
//       return testInterstitialAdUnitId;
//     }
//     return appInterstitialAdUnitId;
//   }

//   static Future<void> initialize() async {
//     await MobileAds.instance.updateRequestConfiguration(
//       RequestConfiguration(
//         testDeviceIds: <String>[testDeviceAdsId],
//       ),
//     );
//   }
// }
