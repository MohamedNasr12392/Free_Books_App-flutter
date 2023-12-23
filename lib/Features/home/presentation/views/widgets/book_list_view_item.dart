import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key,
    required this.book,
  });

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView , extra: book);
        },
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              CustomBookImage(imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ''),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(book.volumeInfo.title?? 'No title',
                          maxLines: 2,
                          style: Styles.textStyle20
                              .copyWith(fontFamily: 'GT Sectra Fine')),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(book.volumeInfo.authors?[0] ?? 'No Author',
                        maxLines: 1, style: Styles.textStyle14),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        const Text("Free",
                            maxLines: 1, style: Styles.textStyle20),
                        const SizedBox(
                          width: 2,
                        ),
                        const Icon(Icons.currency_pound),
                        const Spacer(),
                        BookRate(
                          rating: book.volumeInfo.averageRating?.toDouble() ?? 0,
                          count:  book.volumeInfo.ratingsCount  ?? 0,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
