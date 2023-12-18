import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 1),
            child:  CustomBookImage(imageUrl: 'https://www.bing.com/images/search?view=detailV2&ccid=v5daMXcp&id=B49437377EB2DB4398ACF81B8E3110B2A7FBB9F1&thid=OIP.v5daMXcp4FOAQTCjkpvU9gHaLG&mediaurl=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F35%2Fbb%2F5d%2F35bb5d9b1a4d566bbaa3a42427b95946.jpg&cdnurl=https%3A%2F%2Fth.bing.com%2Fth%2Fid%2FR.bf975a317729e053804130a3929bd4f6%3Frik%3D8bn7p7IQMY4b%252bA%26pid%3DImgRaw%26r%3D0&exph=1960&expw=1308&q=books+photos&simid=608010766647246620&form=IRPRST&ck=2B69FDCDA74433B404D383A17E5BDA66&selectedindex=0&itb=0&ajaxhist=0&ajaxserp=0&vt=0&sim=11',),
          );
        },
      ),
    );
  }
}