import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_buttons.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rate.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
                  child: const CustomBookImage(imageUrl: 'https://www.bing.com/images/search?view=detailV2&ccid=v5daMXcp&id=B49437377EB2DB4398ACF81B8E3110B2A7FBB9F1&thid=OIP.v5daMXcp4FOAQTCjkpvU9gHaLG&mediaurl=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F35%2Fbb%2F5d%2F35bb5d9b1a4d566bbaa3a42427b95946.jpg&cdnurl=https%3A%2F%2Fth.bing.com%2Fth%2Fid%2FR.bf975a317729e053804130a3929bd4f6%3Frik%3D8bn7p7IQMY4b%252bA%26pid%3DImgRaw%26r%3D0&exph=1960&expw=1308&q=books+photos&simid=608010766647246620&form=IRPRST&ck=2B69FDCDA74433B404D383A17E5BDA66&selectedindex=0&itb=0&ajaxhist=0&ajaxserp=0&vt=0&sim=11',),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Text(
                  "The Jungle Book",
                  style:
                      Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    "Rudyard kipling",
                    style: Styles.textStyle14.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const BookRate(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                const BookDetailsButtons(),
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
                const SimilarBooksList(),
              ],
            ),
          ),
        ) , 
      ],
    );
  }
}
