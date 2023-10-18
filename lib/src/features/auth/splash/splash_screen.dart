import 'package:flutter/material.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset(ImgAssets.splash, height: height_710,)
          ],
        ),
      ),
    );
  }
}
