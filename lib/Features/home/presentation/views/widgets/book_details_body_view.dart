import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_buttons.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel ;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const BookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.18),
                  child: CustomBookImage(
                    imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Text(
                  bookModel.volumeInfo.title ?? 'No Title',
                  style:
                      Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    bookModel.volumeInfo.authors?[0] ?? 'UnKnown Author',
                    style: Styles.textStyle14.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                BookRate(
                  count: bookModel.volumeInfo.pageCount ?? 0,
                  rating: bookModel.volumeInfo.averageRating ?? 0,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                BookDetailsButtons(
                  bookModel: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also like",
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SimilarBooksList(bookModel: bookModel,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
