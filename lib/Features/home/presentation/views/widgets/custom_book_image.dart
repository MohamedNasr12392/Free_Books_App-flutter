import 'package:bookly_app/core/utils/assets_paths.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: AspectRatio(
        aspectRatio: 3/4,
        child: Container(              
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
            image: AssetImage(AssetsPaths.testImage),
            fit: BoxFit.fill,
          )),
        ),
      ),
    );
  }
}
