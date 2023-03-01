import 'package:flutter/material.dart';
import 'package:pharma_inc/generated_assets/assets.gen.dart';
import 'package:pharma_inc/generated_assets/colors.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ColorName.seaBlue,
      child: Center(
        child: Assets.logo.image(),
      ),
    );
  }
}
