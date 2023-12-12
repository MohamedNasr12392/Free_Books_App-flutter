import 'package:bookly_app/core/utils/assets_paths.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsPaths.logo,),
        const Text(
          "All free books you need",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}