import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/assets_paths.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          CustomAppBar() ,
          
        ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 40),
      child: Row(
        children: [
          const SizedBox(width: 10,) ,
          Image.asset(
            AssetsPaths.logo,
            width: 75,
            height: 16.1,
            ) ,
          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search , size: 24,))
        ],
      ),
    );
  }
}