// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FiltredImageWidget extends StatelessWidget {
  const FiltredImageWidget({
    required this.imagePath,
    required this.msg,
    super.key,
    this.isFilterd = false,
  });
  final String imagePath;
  final String msg;
  final bool isFilterd;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 160.w,
          height: 160.h,
          child: Center(
            child: isFilterd
                ? Column(
                    children: <Widget>[
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.6), // Adjust the opacity as needed
                          BlendMode.modulate,
                        ),
                        child: Image.asset(imagePath, width: 90),
                      ),
                      const SizedBox(height: 6),
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.6), // Adjust the opacity as needed
                          BlendMode.modulate,
                        ),
                        child: Text(
                          msg,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: <Widget>[
                      Image.asset(imagePath, width: 90),
                      const SizedBox(height: 6),
                      Text(msg, textAlign: TextAlign.center),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
