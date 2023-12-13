import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_item.dart';
import 'package:flutter/material.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
        return const BestSellerListItem();
      },
      shrinkWrap: true,
      ),
    );
  }
}
