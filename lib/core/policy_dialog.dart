import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme/theme.dart';
import 'utility/launch_custom_url.dart';

//How to use just call this on a btn
// void _showPolicyDialog({required BuildContext context, required String filePath}) {
//   showModal<void>(
//     context: context,
//     builder: (context) {
//       return PolicyDialog(mdFileName: filePath);
//     },
//   );
// }

class PolicyDialog extends StatelessWidget {
  PolicyDialog({
    required this.mdFileName,
    super.key,
    this.radius = 8,
  }) : assert(mdFileName.contains('.md'), 'The file must contain the .md extension');

  final double radius;
  final String mdFileName;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 500.h),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                // ignore: inference_failure_on_instance_creation
                future: Future.delayed(const Duration(milliseconds: 150)).then(
                  (value) {
                    return rootBundle.loadString(mdFileName);
                  },
                ),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Markdown(
                      data: snapshot.data ?? '',
                      onTapLink: (text, href, title) {
                        launchCustomUrl(context, href);
                      },
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              style: TextButton.styleFrom(
                backgroundColor: AppPallete.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(radius),
                    bottomRight: Radius.circular(radius),
                  ),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(radius),
                    bottomRight: Radius.circular(radius),
                  ),
                ),
                alignment: Alignment.center,
                height: 30,
                width: double.infinity,
                child: Text(
                  'CLOSE',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.labelLarge?.color,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
