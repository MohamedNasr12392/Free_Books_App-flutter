import 'package:bookly_app/core/utils/assets_paths.dart';
import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .3,
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
        )
      ],
    );
  }
}
