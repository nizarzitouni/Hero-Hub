import 'package:flutter/material.dart';

class CustomFabLocation extends FloatingActionButtonLocation {
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    // Position FAB 20 pixels from the bottom right corner
    return Offset(
      scaffoldGeometry.scaffoldSize.width - 56.0 - 20.0,
      scaffoldGeometry.scaffoldSize.height - 140 - scaffoldGeometry.minInsets.bottom,
    );
  }
}
