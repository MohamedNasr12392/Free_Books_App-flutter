import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/horizontal_list_view.dart';
import 'package:bookly_app/core/utils/assets_paths.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const HorizontalListView(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .06,
          ),
          const Text(
            "Best Seller",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const BestSellerList(),
        ],
      ),
    );
  }
}


