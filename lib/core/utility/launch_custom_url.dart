// import 'package:flutter/material.dart';
// import 'utils.dart';
// import 'package:url_launcher/url_launcher.dart';

// Future<void> launchCustomUrl(BuildContext context, String? url, {bool openExternally = false}) async {
//   if (url != null) {
//     Uri uri = Uri.parse(url);
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(
//         uri,
//         mode: openExternally ? LaunchMode.externalApplication : LaunchMode.inAppWebView,
//       );
//     } else {
//       // ignore: use_build_context_synchronously
//       showSnackBar(context, 'Cannot launch $url');
//     }
//   }
// }
