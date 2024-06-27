import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'show_snackbar.dart';

Future<void> launchCustomUrl(BuildContext context, String? url, {bool openExternally = false}) async {
  if (url != null) {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: openExternally ? LaunchMode.externalApplication : LaunchMode.inAppWebView,
      );
    } else {
      // ignore: use_build_context_synchronously
      showSnackBar(context: context, message: 'Cannot launch $url');
    }
  }
}
