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
    return SizedBox(
      height: MediaQuery.of(context).size.height - 160.h,
      child: Center(
        child: Container(
          width: 200.w, // Increased width to accommodate longer messages
          constraints: BoxConstraints(maxHeight: 200.h), // Set a max height
          child: Column(
            mainAxisSize: MainAxisSize.min, // Use minimum space vertically
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (isFilterd)
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.grey.withOpacity(0.6),
                    BlendMode.modulate,
                  ),
                  child: Image.asset(imagePath, width: 90),
                )
              else
                Image.asset(imagePath, width: 90),
              SizedBox(height: 12.h), // Increased space between image and text
              Flexible(
                // Allow text to shrink if necessary
                child: isFilterd
                    ? ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.6),
                          BlendMode.modulate,
                        ),
                        child: Text(
                          msg,
                          textAlign: TextAlign.center,
                          maxLines: 4, // Limit to 4 lines
                          overflow: TextOverflow.ellipsis, // Add ellipsis for overflow
                        ),
                      )
                    : Text(
                        msg,
                        textAlign: TextAlign.center,
                        maxLines: 4, // Limit to 4 lines
                        overflow: TextOverflow.ellipsis, // Add ellipsis for overflow
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
