import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_item.dart';
import 'package:flutter/material.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      // shrinkWrap: true,
      itemBuilder: (context, index) {
      return const BestSellerListItem();
    },
    );
  }
}
