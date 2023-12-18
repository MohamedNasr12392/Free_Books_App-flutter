import 'package:bookly_app/Features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class NewestBooksList extends StatelessWidget {
  const NewestBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) {
      return const BookListViewItem();
    },
    );
  }
}
