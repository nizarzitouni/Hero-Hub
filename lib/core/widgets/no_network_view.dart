import 'package:flutter/material.dart';

import '../assets_constants.dart';

class NoNetworkView extends StatelessWidget {
  const NoNetworkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsConstants.noConexionImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
