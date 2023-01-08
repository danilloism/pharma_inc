import 'package:flutter/material.dart';
import 'package:pharma_inc/generated/assets.gen.dart';
import 'package:pharma_inc/generated/colors.gen.dart';

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
